open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match t1, t2 with 
  | TInt, TInt -> true 
  | TBool, TBool -> true
  | TNullRef rty1, TNullRef rty2 -> subtype_ref c rty1 rty2 
  | TRef rty1, TRef rty2 -> subtype_ref c rty1 rty2 
  | TRef rty1, TNullRef rty2 -> subtype_ref c rty1 rty2 
  | _ -> false


(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  match t1, t2 with 
  | RString, RString -> true 
  | RArray t1, RArray t2 -> t1 = t2  
  | RStruct struct1_id, RStruct struct2_id ->  
    begin 
      let struct1_fields = Tctxt.lookup_struct struct1_id c in 
      let struct2_fields = Tctxt.lookup_struct struct2_id c in 
      let m = List.length struct1_fields in 
      let n = List.length struct2_fields in 
      if m < n then false else 
        let check_nth_field (bexp, n) (field : Ast.field) : (bool * int) =
          bexp && (field = List.nth struct1_fields n), n + 1 
        in
        fst @@ List.fold_left check_nth_field (true, 0) struct2_fields
    end 
  | RFun (arg_tys1, rt1), RFun (arg_tys2, rt2) -> 
    begin 
      let n = List.length arg_tys1 in 
      let valid_arg_tys = begin 
        if n = List.length arg_tys2 then 
          let arg_ty_pairs = List.combine arg_tys1 arg_tys2 in
          List.fold_left (fun bexp (t1, t2) -> subtype c t1 t2 && bexp) true arg_ty_pairs 
        else false end 
      in
      valid_arg_tys && (subtype_ret c rt1 rt2)
    end  
  | _ -> false

and subtype_ret (c : Tctxt.t) (t1 : Ast.ret_ty) (t2 : Ast.ret_ty) : bool =
  match t1, t2 with 
  | RetVoid, RetVoid -> true 
  | RetVal t1, RetVal t2 -> subtype c t1 t2
  | _ -> false


(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well-formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  match t with 
  | TInt | TBool -> () 
  | TRef rty | TNullRef rty-> typecheck_ref_ty l tc rty 


and typecheck_ref_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  match t with 
  | RString -> ()
  | RArray t -> typecheck_ty l tc t 
  | RStruct s_id -> begin 
    match Tctxt.lookup_struct_option s_id tc with 
    | Some _ -> ()
    | None -> type_error l "struct type not declared" end
  | RFun (arg_tys, rt) -> 
    for n = 0 to List.length arg_tys - 1 do typecheck_ty l tc (List.nth arg_tys n) done;
    typecheck_ret_ty l tc rt 
       
and typecheck_ret_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit =
  match t with 
  | RetVoid -> ()
  | RetVal ty -> typecheck_ty l tc ty

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  let l = Ast.no_loc "" in  
  match e.elt with 
  | CNull rty -> typecheck_ref_ty l c rty; TNullRef rty
  | CBool _ -> TBool 
  | CInt _ -> TInt 
  | CStr _ -> TRef RString 
  | Id id -> lookup id c
  | CArr (t, exp_list) -> begin 
    typecheck_ty l c t;
    let ty_list = List.fold_left (fun acc exp -> acc @ [typecheck_exp c exp]) [] exp_list in
    for n = 0 to List.length ty_list - 1 do 
      let tn = List.nth ty_list n in 
      if not @@ subtype c tn t then type_error l "array initializer has wrong type"  
    done; 
    TRef (RArray t) end 
  | _ -> failwith "unimplemented"

(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  failwith "todo: implement typecheck_stmt"


(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  failwith "todo: typecheck_fdecl"

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'H'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

let typ_ftyp (fdecl:Ast.fdecl) (tc:Tctxt.t) = 
  let {frtyp=rt; fname=f; args=arg_list} = fdecl in  
  let l = Ast.no_loc "" in  
  typecheck_ret_ty l tc rt;
  for n = 0 to List.length arg_list - 1 do 
    let tn, _ = List.nth arg_list n in 
    typecheck_ty l tc tn
  done;
  let ty_list, _ = List.split arg_list in 
  f, TRef (RFun (ty_list, rt))

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let rec aux_struct (h1 : struct_ctxt) (p : Ast.prog) : struct_ctxt =
    match p with 
    | [] -> h1
    | (Gtdecl tdecl)::prog -> begin 
      let s, fields = tdecl.elt in
      (* check that S does not occur in H1, see Oat v.2 spec *)
      aux_struct (h1@[(s, fields)]) prog end 
    | (Gvdecl _)::prog -> aux_struct h1 prog
    | (Gfdecl fdecl)::prog -> aux_struct h1 prog 
  in 
  {locals = []; globals = []; structs = (aux_struct [] p)}

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let rec aux_func (g1 : global_ctxt) (p : Ast.prog) : global_ctxt =
    match p with 
    | [] -> g1
    | (Gtdecl _)::prog -> aux_func g1 prog 
    | (Gvdecl _)::prog -> aux_func g1 prog
    | (Gfdecl fdecl)::prog -> begin 
      let f, t = typ_ftyp fdecl.elt tc in 
      (* check that f is not in g1 *)
      aux_func (g1@[(f, t)]) prog end
  in 
  {tc with globals = (aux_func [] p) @ tc.globals}

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let rec aux_global (g1 : global_ctxt) (p : Ast.prog) : global_ctxt =
    match p with 
    | [] -> g1
    | (Gtdecl _)::prog -> aux_global g1 prog 
    | (Gvdecl vdecl)::prog -> begin 
      let {name=x; init=gexp} = vdecl.elt in 
      (* check that gexp contains no global variables? See Oat v.2 spec *)
      let t = typecheck_exp tc gexp in
      (* check that x is not in g1? *)
      aux_global (g1@[(x, t)]) prog end
    | (Gfdecl _)::prog -> aux_global g1 prog 
  in 
  {tc with globals = (aux_global [] p) @ tc.globals}

(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
