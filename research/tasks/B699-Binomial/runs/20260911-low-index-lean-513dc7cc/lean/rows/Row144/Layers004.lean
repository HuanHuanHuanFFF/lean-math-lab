import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row144Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row144_layer004_checked :
    coverLayerCheck row144.height row144.goods { lower := 329472, upper := 658944, M := 5 } = true := by
  decide +kernel

theorem row144_layer005_checked :
    coverLayerCheck row144.height row144.goods { lower := 658944, upper := 1317888, M := 4 } = true := by
  decide +kernel

theorem row144_layer006_checked :
    coverLayerCheck row144.height row144.goods { lower := 1317888, upper := 2635776, M := 3 } = true := by
  decide +kernel

theorem row144_layer007_checked :
    coverLayerCheck row144.height row144.goods { lower := 2635776, upper := 5271552, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row144_layer007_checked
