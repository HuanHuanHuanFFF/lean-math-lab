import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.BlockApprox
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option Elab.async false
open B699Middle B699Dyadic B699HeightBlock

example : blockApproxCheck 48 1000 1022 333 666 20000000 172 = true := by
  run_tac
    let g ← Lean.Elab.Tactic.getMainGoal
    let ty ← g.getType
    let pf ← Lean.Meta.mkDecideProof ty
    let nm ← Lean.Meta.mkAuxLemma [] ty pf
    g.assign (Lean.mkConst nm)
