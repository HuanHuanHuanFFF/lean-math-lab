import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row138Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer004_checked :
    coverLayerCheck row138.height row138.goods { lower := 302496, upper := 604992, M := 6 } = true := by
  decide +kernel

theorem row138_layer005_checked :
    coverLayerCheck row138.height row138.goods { lower := 604992, upper := 1209984, M := 5 } = true := by
  decide +kernel

theorem row138_layer006_checked :
    coverLayerCheck row138.height row138.goods { lower := 1209984, upper := 2419968, M := 4 } = true := by
  decide +kernel

theorem row138_layer007_checked :
    coverLayerCheck row138.height row138.goods { lower := 2419968, upper := 4839936, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer007_checked
