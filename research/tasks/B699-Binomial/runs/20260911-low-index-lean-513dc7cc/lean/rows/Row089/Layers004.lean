import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row089Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer004_checked :
    coverLayerCheck row089.height row089.goods { lower := 125312, upper := 250624, M := 11 } = true := by
  decide +kernel

theorem row089_layer005_checked :
    coverLayerCheck row089.height row089.goods { lower := 250624, upper := 501248, M := 9 } = true := by
  decide +kernel

theorem row089_layer006_checked :
    coverLayerCheck row089.height row089.goods { lower := 501248, upper := 1002496, M := 7 } = true := by
  decide +kernel

theorem row089_layer007_checked :
    coverLayerCheck row089.height row089.goods { lower := 1002496, upper := 2004992, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer007_checked
