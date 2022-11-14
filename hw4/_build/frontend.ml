open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)

let ll_binop_insn (ast_binop:Ast.binop) (rt:Ll.ty) (op1:Ll.operand) (op2:Ll.operand) : Ll.insn = 
  if List.mem ast_binop [Add; Sub; Mul; Shl; Shr; Sar; And; Or; IAnd; IOr] then 
    let ll_binop = 
      match ast_binop with 
      | Add -> Ll.Add
      | Sub -> Ll.Sub
      | Mul -> Ll.Mul
      | Shl -> Ll.Shl
      | Shr -> Ll.Lshr
      | Sar -> Ll.Ashr
      | And | IAnd -> Ll.And
      | Or | IOr -> Ll.Or
      | _ -> failwith "unreachable binop" 
    in Binop (ll_binop, rt, op1, op2)
  else
    let cnd = 
      match ast_binop with  
      | Eq -> Ll.Eq 
      | Neq -> Ll.Ne
      | Lt -> Ll.Slt
      | Lte -> Ll.Sle
      | Gt -> Ll.Sgt
      | Gte -> Ll.Sge
      | _ -> failwith "unreachable binop"
    in Icmp (cnd, rt, op1, op2) 

let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  match exp.elt with 
  | CInt i -> I64, Const i, []
  | CBool b -> let b_int = if b then 1L else 0L in I64, Const b_int, []
  | CStr str -> 
    begin
      let str_len = String.length str + 1 in
      let gid = gensym "" in
      let gty = Array (str_len, I8) in
      let ginit = G (gid, (gty, GString str)) in
      let dst_uid = gensym "" in
      let gep = I(dst_uid, Gep (Ptr gty, Gid gid, [Const 0L; Const 0L])) in 
      Ptr I8, Id dst_uid, [ginit] >@ [gep]
    end 
  | Bop (binop, oat_e1, oat_e2) -> 
    begin
      let e1_ty, ll_e1_val, load_e1 = cmp_exp c oat_e1 in 
      let e2_ty, ll_e2_val, load_e2 = cmp_exp c oat_e2 in 
      let _, _, ret_ty = typ_of_binop binop in
      let ll_ret_ty = cmp_ty ret_ty in 
      let dst_uid = gensym "" in
      let ll_insn = ll_binop_insn binop e1_ty ll_e1_val ll_e2_val in  
      let binop_e1_e2 = [(I (dst_uid, ll_insn))] in 
      ll_ret_ty, Ll.Id dst_uid, load_e1 >@ load_e2 >@ binop_e1_e2     
    end
  | Uop (unop, e) -> 
    begin 
      let e_ty, ll_e, load_e = cmp_exp c e in 
      let _, ret_ty = typ_of_unop unop in 
      let ll_ret_ty = cmp_ty ret_ty in 
      let res_uid = gensym "" in 
      let ll_insn =  
        match unop with 
        | Neg -> Binop (Ll.Sub, ll_ret_ty, Const 0L, ll_e)
        | Lognot -> Binop (Ll.And, ll_ret_ty, Const 1L, ll_e) 
        | Bitnot -> Binop (Ll.Xor, ll_ret_ty, Const (Int64.max_int), ll_e) 
      in 
      ll_ret_ty, Id res_uid, load_e >@ [(I (res_uid, ll_insn))] 
    end 
  | Id oat_id -> 
    begin
      let ll_ty, ll_src = Ctxt.lookup oat_id c in 
      let dst_uid = gensym "" in
      let load_id_to_dst = [(I (dst_uid, Load (Ll.Ptr ll_ty, ll_src)))] in
      ll_ty, Ll.Id dst_uid, load_id_to_dst  
    end 
  | Call ({elt=Id id}, args) ->
    begin 
      (* see semantics of lookup_function, the output type always has this form *)
      (* see semantics of cmp_function_ctxt, second output always has this form*)
      let Ptr (Fun (arg_tys, ret_ty)), ll_fun = Ctxt.lookup_function id c in
      let dst_uid = gensym "" in
      let load_args, ll_args = 
        let load_arg (s, arg_acc) (arg:Ast.exp Ast.node) : (stream * Ll.operand list) = 
          let _, ll_arg, load = cmp_exp c arg in 
          s >@ load, arg_acc @ [ll_arg] 
        in
        List.fold_left load_arg ([],[]) args
      in
      let ll_ty_args = List.combine arg_tys ll_args in
      let call_func = [(I (dst_uid, Call (ret_ty, ll_fun, ll_ty_args)))] in
      ret_ty, Ll.Id dst_uid, load_args >@ call_func
    end
  | _ -> failwith "cmp_exp unimplemented"


(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations

   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)

let cmp_vdecl (c:Ctxt.t) ((oat_id, exp):(string * (Ast.exp Ast.node))) : Ctxt.t * stream = 
  let ll_uid = gensym "" in
  let exp_ty, ll_exp_src, cmp_exp = cmp_exp c exp in
  let alloc_var = (E (ll_uid, Alloca exp_ty)) in
  let init_var = (I ("", Store (exp_ty, ll_exp_src, Id ll_uid))) in 
  let c = Ctxt.add c oat_id (exp_ty, Id ll_uid) in  
  c, [alloc_var] >@ cmp_exp >@ [init_var] 

let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  match stmt.elt with 
  | Ret None -> c, [(T (Ll.Ret (rt, None)))]
  | Ret (Some exp) ->
    begin
      let exp_ty, ll_src, init_op = cmp_exp c exp in 
      let ret_op = [(T (Ll.Ret (exp_ty, Some ll_src)))] in
      c, init_op >@ ret_op
    end
  | Decl (oat_id, exp) -> cmp_vdecl c (oat_id, exp)  
  | If (bexp, then_block, else_block) ->
    begin
      let _, ll_bexp_src, cmp_bexp = cmp_exp c bexp in
      let then_lbl = gensym "" in 
      let else_lbl = gensym "" in 
      let join_lbl = gensym "" in
      let branch = [(T (Cbr (ll_bexp_src, then_lbl, else_lbl)))] in 
      let then_L = [(L then_lbl)] in  
      let c, then_block_stream = cmp_block c rt then_block in
      let then_T = [(T (Br join_lbl))] in
      let else_L = [(L else_lbl)] in  
      let c, else_block_stream = cmp_block c rt else_block in
      let else_T = [(T (Br join_lbl))] in
      let join_L = [(L join_lbl)] in
      c, cmp_bexp >@ branch 
                  >@ then_L >@ then_block_stream >@ then_T
                  >@ else_L >@ else_block_stream >@ else_T
                  >@ join_L
    end
  | While (bexp, body_block) -> 
    begin
      let _, ll_bexp_src, cmp_bexp = cmp_exp c bexp in
      let loop_lbl = gensym "" in
      let body_lbl = gensym "" in
      let post_lbl = gensym "" in
      let branch_loop = [(T (Br loop_lbl))] in
      let loop_L = [(L loop_lbl)] in
      let branch_body_post = [(T (Cbr (ll_bexp_src, body_lbl, post_lbl)))] in
      let body_L = [(L body_lbl)] in
      let c, body_block_stream = cmp_block c rt body_block in
      let post_L = [(L post_lbl)] in
      c, branch_loop >@ loop_L >@ cmp_bexp >@ branch_body_post 
                     >@ body_L >@ body_block_stream >@ branch_loop 
                     >@ post_L 
    end
  | For (init, Some bexp, Some update_stmt, body_block) ->
    begin 
      let c, init_stream = List.fold_left (fun (c, stream) -> cmp_vdecl c) (c, []) init in 
      let c, loop_stream = cmp_stmt c rt (no_loc (While (bexp, body_block @ [update_stmt]))) in 
      c, init_stream >@ loop_stream 
    end
  | Assn (lhs, exp) ->
    begin 
      let exp_ty, ll_exp_src, cmp_exp = cmp_exp c exp in
      let _, ll_dst = 
        match lhs.elt with 
        | (Id oat_id) -> Ctxt.lookup oat_id c 
        | _ -> failwith "unimplemented case for Assn"
      in
      let init_var = (I ("", Store (exp_ty, ll_exp_src, ll_dst))) in 
      c, cmp_exp >@ [init_var] 
    end
  | SCall (id, args) -> 
    let _, _, call_fun = cmp_exp c (no_loc (Call (id, args))) in 
    c, call_fun
  | _ -> failwith "unimplemented case cmp_stmt"

(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  List.fold_left (fun c -> function 
    | Ast.Gvdecl { elt={ name; init={elt=exp}}} -> 
        let vt = 
          match exp with 
          | CNull rty -> TRef rty 
          | CBool _ -> TBool 
          | CInt _ -> TInt
          | CStr _ -> TRef RString
          | CArr (ty, _) -> TRef (RArray ty)
          | _ -> failwith "invalid global initializer"
       in 
        Ctxt.add c name (cmp_ty vt, Gid name)
    | _ -> c 
  ) c p
  
(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)

let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let {elt={frtyp; fname; args; body}; loc=_} = f in
  (* steps 1 to 3 *)
  let alloc_stack_for_args, c_extended = 
    let process_arg (s, c) (arg_ty, oat_arg_id):(stream * Ctxt.t) =
      let ll_arg_id = gensym "" in
      let ll_arg_ty = cmp_ty arg_ty in
      let ll_arg = Ll.Id ll_arg_id in
      let c = Ctxt.add c oat_arg_id (ll_arg_ty, ll_arg) in 
      s >@ [(E (ll_arg_id, Alloca ll_arg_ty))] >@ [(E ("", Store (ll_arg_ty, Ll.Id oat_arg_id, ll_arg)))], c 
    in 
    List.fold_left process_arg ([],c) args 
  in
  (* step 4 *)
  let rt = cmp_ret_ty frtyp in 
  let compiled_body = cmp_block c_extended rt body in 
  (* step 5 *)
  let cfg = cfg_of_stream (alloc_stack_for_args >@ (snd compiled_body)) in  
  let f_ty = cmp_fty (fst @@ List.split args, frtyp) in 
  let f_param = snd @@ List.split args in 
  let fdecl = {f_ty=f_ty; f_param=f_param; f_cfg=fst cfg} in 
  fdecl, (snd cfg)

(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)

let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  match e.elt with 
  | CNull rty -> (cmp_ty (Ast.TRef rty), GNull), []
  | CBool b -> (cmp_ty Ast.TBool, GInt (if b then 1L else 0L)), []
  | CInt i -> (cmp_ty (Ast.TInt), GInt i), []
  | CStr str -> 
    begin
      let str_len = String.length str + 1 in
      let gty1 = Array (str_len, I8) in
      let ginit1 = GString str in
      let gid = gensym  "" in
      let gty2 = cmp_ty @@ Ast.TRef RString in
      let ginit2 = GBitcast (Ptr gty1, GGid gid, Ll.Ptr I8) in
      (gty2, ginit2), (gid, (gty1, ginit1))::[] 
    end
  | _ -> failwith "invalid global initializer"

(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
