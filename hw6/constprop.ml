open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let insn_flow (u,i:uid * insn) (d:fact) : fact =
  let compute_const bop c1 c2 = 
    match bop with 
    | Add -> Int64.add c1 c2 
    | Sub -> Int64.sub c1 c2 
    | Mul -> Int64.mul c1 c2
    | Shl -> Int64.shift_left c1 (Int64.to_int c2)
    | Lshr -> Int64.shift_right_logical c1 (Int64.to_int c2)
    | Ashr -> Int64.shift_right c1 (Int64.to_int c2)
    | And -> Int64.logand c1 c2
    | Or -> Int64.logor c1 c2
    | Xor -> Int64.logxor c1 c2
  in
  let int64_of_bool (b:bool)=
    match b with 
    | true -> 1L  
    | false -> 0L  
  in
  let symconst_of (arg:operand) : SymConst.t = 
    match arg with 
    | Const c -> SymConst.Const c
    | Id id -> begin 
      match UidM.find_opt id d with 
      | Some c -> c 
      | None -> SymConst.UndefConst end
    | _ -> NonConst  
  in
  match i with 
  | Binop (bop, _, arg1, arg2) -> begin
    match symconst_of arg1, symconst_of arg2 with 
    | SymConst.Const c1, SymConst.Const c2 -> 
      let res = compute_const bop c1 c2 in 
      UidM.add u (SymConst.Const res) d
    | SymConst.UndefConst, _ -> UidM.add u (SymConst.UndefConst) d
    | _, SymConst.UndefConst -> UidM.add u (SymConst.UndefConst) d
    | SymConst.NonConst, _ -> UidM.add u (SymConst.NonConst) d
    | _, SymConst.NonConst -> UidM.add u (SymConst.NonConst) d end
  | Icmp (cnd, _, arg1, arg2) -> begin
    match symconst_of arg1, symconst_of arg2 with 
    | SymConst.Const c1, SymConst.Const c2 -> 
      let res = 
        match cnd with 
        | Eq -> Int64.equal c1 c2 
        | Ne -> not (Int64.equal c1 c2) 
        | Slt -> Int64.compare c1 c2 < 0
        | Sle -> let cmp = Int64.compare c1 c2 in cmp = 0 || cmp < 0 
        | Sgt -> Int64.compare c1 c2 > 0
        | Sge -> let cmp = Int64.compare c1 c2 in cmp = 0 || cmp > 0 
      in
      UidM.add u (SymConst.Const (int64_of_bool res)) d
    | SymConst.UndefConst, _ -> UidM.add u (SymConst.UndefConst) d
    | _, SymConst.UndefConst -> UidM.add u (SymConst.UndefConst) d
    | SymConst.NonConst, _ -> UidM.add u (SymConst.NonConst) d
    | _, SymConst.NonConst -> UidM.add u (SymConst.NonConst) d end
  | Store (_, _, _) | Call (Void, _, _) -> UidM.add u (SymConst.UndefConst) d
  | _ -> UidM.add u (SymConst.NonConst) d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      let meet_symconst x y = 
        match x, y with 
        | SymConst.Const c1, SymConst.Const c2 when c1 = c2 -> SymConst.Const c1
        | SymConst.Const c1, SymConst.Const c2 -> SymConst.NonConst
        | SymConst.NonConst, _ -> SymConst.NonConst 
        | _, SymConst.NonConst -> SymConst.NonConst 
        | SymConst.UndefConst, _ -> SymConst.UndefConst 
        | _, SymConst.UndefConst -> SymConst.UndefConst 
      in
      let meet uid v1 v2 = 
        match v1, v2 with 
        | None, None -> None 
        | Some x, None -> Some x
        | None, Some y -> Some y 
        | Some x, Some y -> Some (meet_symconst x y)
      in
      match ds with 
      | [] -> UidM.empty
      | _ -> List.fold_left (UidM.merge meet) (List.hd ds) ds 
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    failwith "Constprop.cp_block unimplemented"
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
