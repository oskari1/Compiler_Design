(** Alias Analysis *)

open Ll
open Datastructures

(* The lattice of abstract pointers ----------------------------------------- *)
module SymPtr =
  struct
    type t = MayAlias           (* uid names a pointer that may be aliased *)
           | Unique             (* uid is the unique name for a pointer *)
           | UndefAlias         (* uid is not in scope or not a pointer *)

    let compare : t -> t -> int = Pervasives.compare

    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"

  end

(* The analysis computes, at each program point, which UIDs in scope are a unique name
   for a stack slot and which may have aliases *)
type fact = SymPtr.t UidM.t

(* flow function across Ll instructions ------------------------------------- *)
(* TASK: complete the flow function for alias analysis. 

   - After an alloca, the defined UID is the unique name for a stack slot
   - A pointer returned by a load, call, bitcast, or GEP may be aliased
   - A pointer passed as an argument to a call, bitcast, GEP, or store
     may be aliased
   - Other instructions do not define pointers

 *)
let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  match i with 
  | Alloca _ -> UidM.add u SymPtr.Unique d
  | Load (ty, _) -> begin 
    match ty with 
    | Ptr (Ptr _) -> UidM.add u SymPtr.MayAlias d (* in this case, return type is a pointer *) 
    | _ -> d end 
  | Bitcast (_, Id id, _) ->
    let d = UidM.add u SymPtr.MayAlias d in
    UidM.add id SymPtr.MayAlias d
  | Gep (_, Id id, _) -> 
    let d = UidM.add u SymPtr.MayAlias d in
    UidM.add id SymPtr.MayAlias d
  | Gep (_, Gid id, _) -> UidM.add u SymPtr.MayAlias d
  | Store (ty, Id id, _) -> begin 
    match ty with 
    | Ptr _ -> UidM.add id SymPtr.MayAlias d
    | _ -> d end
  | Call (ret_ty, _, arg_list) -> 
    let d =
      match ret_ty with 
      | Ptr _ -> UidM.add u SymPtr.MayAlias d
      | _ -> d
    in
    let ptr_ids = List.fold_left (fun ptr_ids (ty, op) -> 
      match ty, op with 
      | Ptr _, Id id -> id::ptr_ids
      | _ -> ptr_ids) [] arg_list in
    List.fold_left (fun d ptr_id -> UidM.add ptr_id SymPtr.MayAlias d) d ptr_ids
  | _ -> UidM.add u SymPtr.UndefAlias d 



(* The flow function across terminators is trivial: they never change alias info *)
let terminator_flow t (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    (* UndefAlias is logically the same as not having a mapping in the fact. To
       compare dataflow facts, we first remove all of these *)
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymPtr.UndefAlias)

    let compare (d:fact) (e:fact) : int = 
      UidM.compare SymPtr.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymPtr.to_string v)

    (* TASK: complete the "combine" operation for alias analysis.

       The alias analysis should take the join over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful.

       It may be useful to define a helper function that knows how to take the
       join of two SymPtr.t facts.
    *)
    let combine (ds:fact list) : fact =
      let join_symptr x y = 
        match x,y with
        | SymPtr.Unique, SymPtr.Unique -> SymPtr.Unique
        | SymPtr.MayAlias, _ -> SymPtr.MayAlias
        | _, SymPtr.MayAlias -> SymPtr.MayAlias
        | _, _ -> SymPtr.UndefAlias
      in
      let join uid v1 v2 = 
        match v1, v2 with
        | None, None -> None
        | Some x, None -> Some x
        | None, Some y -> Some y
        | Some x, Some y -> Some (join_symptr x y)
         (*
        | Some (SymPtr.Unique), Some (SymPtr.Unique) -> Some (SymPtr.Unique)
        | Some (SymPtr.MayAlias), Some _ -> Some (SymPtr.MayAlias)
        | Some _, Some (SymPtr.MayAlias) -> Some (SymPtr.MayAlias)
        | Some _, Some _ -> Some (SymPtr.UndefAlias)
        | Some x, _ -> Some x
        | _, Some y -> Some y
        | _, _ -> None *)
      in begin
      match ds with 
      | [] -> UidM.empty  
      | _ -> List.fold_left (UidM.merge join) (List.hd ds) ds end
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefAlias *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any pointer parameter 
     to the function may be aliased *)
  let alias_in = 
    List.fold_right 
      (fun (u,t) -> match t with
                    | Ptr _ -> UidM.add u SymPtr.MayAlias
                    | _ -> fun m -> m) 
      g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg

