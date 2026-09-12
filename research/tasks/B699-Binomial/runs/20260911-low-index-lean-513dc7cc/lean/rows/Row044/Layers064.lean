import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer064_checked :
    coverLayerCheck row044.height row044.goods { lower := 34901239787458471657472, upper := 69802479574916943314944, M := 15 } = true := by
  decide +kernel

theorem row044_layer065_checked :
    coverLayerCheck row044.height row044.goods { lower := 69802479574916943314944, upper := 139604959149833886629888, M := 14 } = true := by
  decide +kernel

theorem row044_layer066_checked :
    coverLayerCheck row044.height row044.goods { lower := 139604959149833886629888, upper := 279209918299667773259776, M := 14 } = true := by
  decide +kernel

theorem row044_layer067_checked :
    coverLayerCheck row044.height row044.goods { lower := 279209918299667773259776, upper := 558419836599335546519552, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer067_checked
