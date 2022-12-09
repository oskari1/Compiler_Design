(** Dead Code Elimination  *)
open Ll
open Datastructures


(* expose a top-level analysis operation ------------------------------------ *)
(* TASK: This function should optimize a block by removing dead instructions
   - lb: a function from uids to the live-OUT set at the 
     corresponding program point
   - ab: the alias map flowing IN to each program point in the block
   - b: the current ll block

   Note: 
     Call instructions are never considered to be dead (they might produce
     side effects)

     Store instructions are not dead if the pointer written to is live _or_
     the pointer written to may be aliased.

     Other instructions are dead if the value they compute is not live.

   Hint: Consider using List.filter
 *)
let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =
    let is_dead (id, insn) = 
      let live_out = lb id in 
      let alias_in = ab id in
      let is_live uid = UidS.mem uid live_out in
      let maybe_aliased uid = 
        match UidM.find uid alias_in with 
        | Alias.SymPtr.MayAlias -> true 
        | _ -> false
      in
      match insn with 
      | Call (_, _, _) -> false
      | Store (_, _, Id dst) ->
        if is_live dst || maybe_aliased dst then false 
        else true
      | _ -> not (is_live id) 
    in
    {b with insns=List.filter (fun (id, insn) -> not (is_dead (id, insn))) b.insns}

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =

  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in

    (* compute liveness at each program point for the block *)
    let lb = Liveness.Graph.uid_out lg l in

    (* compute aliases at each program point for the block *)
    let ab = Alias.Graph.uid_in ag l in 

    (* compute optimized block *)
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg

