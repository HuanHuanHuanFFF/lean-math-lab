import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row163Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_layer004_checked :
    coverLayerCheck row163.height row163.goods { lower := 422496, upper := 844992, M := 4 } = true := by
  decide +kernel

theorem row163_layer005_checked :
    coverLayerCheck row163.height row163.goods { lower := 844992, upper := 1689984, M := 3 } = true := by
  decide +kernel

theorem row163_layer006_checked :
    coverLayerCheck row163.height row163.goods { lower := 1689984, upper := 3379968, M := 2 } = true := by
  decide +kernel

theorem row163_layer007_checked :
    coverLayerCheck row163.height row163.goods { lower := 3379968, upper := 6759936, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layer007_checked
