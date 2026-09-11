import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row113Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer004_checked :
    coverLayerCheck row113.height row113.goods { lower := 202496, upper := 404992, M := 11 } = true := by
  decide +kernel

theorem row113_layer005_checked :
    coverLayerCheck row113.height row113.goods { lower := 404992, upper := 809984, M := 9 } = true := by
  decide +kernel

theorem row113_layer006_checked :
    coverLayerCheck row113.height row113.goods { lower := 809984, upper := 1619968, M := 8 } = true := by
  decide +kernel

theorem row113_layer007_checked :
    coverLayerCheck row113.height row113.goods { lower := 1619968, upper := 3239936, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer007_checked
