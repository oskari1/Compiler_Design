(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page.
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge



(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from %rbp (in bytes) that represents a storage slot in
   the stack.
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).
*)
let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins =
  fun (ll_op: Ll.operand) -> 
    match ll_op with 
    | Null -> (Movq, [Imm (Lit 0L); dest])
    | Const lit -> (Movq, [Imm (Lit lit); dest]) 
    | Id uid -> let src = lookup ctxt.layout uid in (Movq, [src; dest])
    | Gid gid -> (Movq, [Imm (Lit 0L); dest])

(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
*)




(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelementptr, you must generate x86 code that performs
   the appropriate arithmetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes.
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty (tdecls:(tid * ty) list) (t:Ll.ty) : int =
  match t with 
  | Void | I8 | Fun (_, _) -> 0
  | I1 | I64 | Ptr _ -> 8
  | Struct ty_list -> List.fold_left (fun acc ty -> acc + (size_ty tdecls ty)) 0 ty_list 
  | Array (len, ty) -> len * (size_ty tdecls ty) 
  | Namedt tid -> size_ty tdecls (lookup tdecls tid) 




(* Generates code that computes a pointer value.

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.

     - if t is any other type, the path is invalid

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)
let compile_gep (ctxt:ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
failwith "compile_gep not implemented"



(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple of assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Setb instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)
let compile_store (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  match i with 
  | Store (ty, src, dst_addr) -> 
    let move_src_to_reg = compile_operand ctxt (Reg Rdi) src in 
    let move_dst_addr_to_reg = compile_operand ctxt (Reg Rsi) dst_addr in
    [move_src_to_reg;
     move_dst_addr_to_reg;
     (Movq, [Reg Rdi; Ind2 Rsi])]
  | _ -> []

let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  let is_store i = 
    match i with 
    | Store (_, _, _) -> true 
    | _ -> false
  in 
  if is_store i then compile_store ctxt (uid, i) 
  else 
  let dst = lookup ctxt.layout uid in 
  match i with 
  | Binop (bop, ty, op1, op2) -> 
    begin
      let is_shift bop = 
        match bop with 
        | Shl | Lshr | Ashr -> true 
        | _ -> false 
      in 
      let get_op bop = 
        match bop with 
        | Add -> Addq 
        | Sub -> Subq
        | Mul -> Imulq
        | Shl -> Shlq
        | Lshr -> Shrq 
        | Ashr -> Sarq
        | And -> Andq
        | Or -> Orq 
        | Xor -> Xorq
      in
      if not @@ is_shift bop then 
        let move_op1_to_reg = compile_operand ctxt (Reg Rdi) op1 in 
        let move_op2_to_reg = compile_operand ctxt (Reg Rsi) op2 in 
        [move_op1_to_reg; 
        move_op2_to_reg; 
        (get_op bop, [Reg Rsi; Reg Rdi]); 
        (Movq, [Reg Rdi; dst])]
      else
        let move_op1_to_reg = compile_operand ctxt (Reg Rdi) op1 in 
        let move_op2_to_reg = compile_operand ctxt (Reg Rcx) op2 in 
        [move_op1_to_reg; 
         move_op2_to_reg; 
         (get_op bop, [Reg Rcx; Reg Rdi]); 
         (Movq, [Reg Rdi; dst])]
    end  
  | Icmp (cnd, _, op1, op2) ->  
    begin
      let move_op1_to_reg = compile_operand ctxt (Reg Rdi) op1 in 
      let move_op2_to_reg = compile_operand ctxt (Reg Rsi) op2 in 
      let cc = compile_cnd cnd in 
      [move_op1_to_reg; 
       move_op2_to_reg;
       (Movq, [Imm (Lit 0L); dst]);
       (Cmpq, [Reg Rdi; Reg Rsi]);
       (Set cc, [dst])]
    end 
  | Alloca ty -> 
    let size = Int64.of_int (size_ty ctxt.tdecls ty) in  
    [(Subq, [Imm (Lit size); Reg Rsp]);
    (Movq, [Reg Rsp; dst])]
  | Load (ty, src_addr) ->
    let move_opnd_to_reg = compile_operand ctxt (Reg Rdi) src_addr in 
    [move_opnd_to_reg;
     (Movq, [Ind2 Rdi; Reg Rsi]); 
     (Movq, [Reg Rsi; dst])]
  | _ -> []


(* compiling terminators  --------------------------------------------------- *)

(* prefix the function name [fn] to a label to ensure that the X86 labels are 
   globally unique . *)
let mk_lbl (fn:string) (l:string) = fn ^ "." ^ l

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional

   [fn] - the name of the function containing this terminator
*)

let concat_map (f: 'a -> 'b list) (l : 'a list) : ('b list) = List.concat (List.map f l)

let compile_terminator (fn:string) (ctxt:ctxt) (t:Ll.terminator) : ins list =
  let return = [(Movq, [Reg Rbp; Reg Rsp]); (Popq, [Reg Rbp]); (Retq, [])] in 
  match t with 
  | Ret (Void, _) -> return 
  | Ret (I64, Some ll_operand) -> (compile_operand ctxt (Reg Rax) ll_operand)::return
  | Br lbl -> [(Jmp, [(Imm (Lbl (mk_lbl fn lbl)))])]
  | Cbr (op, lbl1, lbl2) -> 
    (* note that for this case it is important to see how Icmp is implemented. If the condition
       holds, then op evaluates to 1, else to 0. Thus, to check the result of the comparison
       we just need to And op with 1L to see if it was 1L = true or 0L = false *)
    let load_cond_to_rax = compile_operand ctxt (Reg Rax) op in 
    [load_cond_to_rax;
     (Andq, [Imm (Lit 1L); Reg Rax]);
     (J Eq, [Imm (Lbl (mk_lbl fn lbl1))]);
     (Jmp, [Imm (Lbl (mk_lbl fn lbl2))])]
  | _ -> []

(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
   [fn] - the name of the function containing this block
   [ctxt] - the current context
   [blk]  - LLVM IR code for the block
*)


let compile_block (fn:string) (ctxt:ctxt) (blk:Ll.block) : ins list =
  let ll_insns = blk.insns in 
  let blk_insns = concat_map (compile_insn ctxt) ll_insns in 
  let terminator = snd blk.term in 
  let terminate_ins = compile_terminator fn ctxt terminator in 
  blk_insns @ terminate_ins 

let compile_lbl_block fn lbl ctxt blk : elem =
  Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)
let arg_loc (n : int) : operand =
  match n with
  | 0 -> Reg Rdi
  | 1 -> Reg Rsi
  | 2 -> Reg Rdx
  | 3 -> Reg Rcx
  | 4 -> Reg R08
  | 5 -> Reg R09
  | n -> let offset = Int64.of_int (((n - 6)+2)*8) in Ind3 (Lit offset, Rbp)

(* We suggest that you create a helper function that computes the
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id
     is also stored as a stack slot.
   - see the discussion about locals

*)


let fold_left_map (f: 'a -> 'b -> 'a * 'c) (base: 'a) (l: 'b list) : ('a * 'c list) =
  let g ((acc, res):('a * 'c list)) (el: 'b) : ('a * 'c list) =
    let a_c = f acc el in 
    let a = fst a_c in
    let c = snd a_c in 
    (a, res @ [c])
  in List.fold_left g (base, []) l

let get_uids (entry:block) (lbl_blocks:(lbl * block) list) : (uid list) = 
  let get_insns (block:block) : (lbl * insn) list = 
    match block with 
    | {insns = insns; term = _} -> insns 
  in
  let entry_insns = get_insns entry in 
  let other_insns = concat_map (fun (_, block) -> get_insns block) lbl_blocks in
  let is_not_store_or_call ((_,insn):lbl * insn) : bool = 
    match insn with
    | Store (_, _, _) | Call (Void, _, _) -> false
    | _ -> true
  in
  let no_call_or_store_ins = List.filter is_not_store_or_call (entry_insns @ other_insns) in 
  fst (List.split no_call_or_store_ins) 
  

let stack_layout (args : uid list) ((block, lbl_blocks):cfg) : layout =
  let get_indexed_list (uids : uid list) : (int * uid) list = snd (fold_left_map (fun acc uid -> (acc + 1, (acc + 1, uid))) 0 uids) in 
  let block_uids : uid list = get_uids block lbl_blocks in  
  let uid_idx_pairs = get_indexed_list (args @ block_uids) in 
  List.map (fun (idx, uid) -> (uid, Ind3 (Lit (Int64.of_int (-8 * idx)), Rbp))) uid_idx_pairs


(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)

let move_args_to_slots (layout:layout) (args: lbl list) : ins list =
  let arg_indices = snd (fold_left_map (fun acc _ -> (acc + 1, acc)) 0 args) in 
  let move_args_to_slot (arg_idx : int) : ins list = 
    let src = arg_loc arg_idx in 
    let dst = lookup layout (List.nth args arg_idx) in 
    match arg_idx with
    | n when n < 6 -> [(Movq, [src; dst])]
    | _ -> [(Movq, [src; Reg Rax]); (Movq, [Reg Rax; dst])]
  in 
  concat_map move_args_to_slot arg_indices

let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({ f_ty; f_param; f_cfg }:fdecl) : prog =
  let entry_blk = fst f_cfg in 
  let lbl_blocks = snd f_cfg in 
  let stack_layout = stack_layout f_param f_cfg in 
  let ctxt = {tdecls=tdecls; layout=stack_layout} in
  let entry_elem = 
    let bytes_for_slots = Int64.of_int (8*(List.length stack_layout)) in
    let setup_frame = [(Pushq, [Reg Rbp]); (Movq, [Reg Rsp; Reg Rbp])] in 
    let alloc_frame = [(Subq, [Imm (Lit bytes_for_slots); Reg Rsp])] in 
    let init_slots = move_args_to_slots stack_layout f_param in
    let exec_body = compile_block name ctxt entry_blk in 
    let entry_ins = setup_frame @ alloc_frame @ init_slots @ exec_body in 
    {lbl=name; global=true; asm = Text entry_ins}
  in
  if List.length lbl_blocks = 0 then 
    [entry_elem] 
  else 
    let lbl_block_elems = List.map (fun (lbl, blk) -> compile_lbl_block name lbl ctxt blk) lbl_blocks in 
    entry_elem::lbl_block_elems

(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit : ginit -> X86.data list = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten
  | GBitcast (t1,g,t2) -> compile_ginit g

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)
