import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row094Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer004_checked :
    coverLayerCheck row094.height row094.goods { lower := 139872, upper := 279744, M := 10 } = true := by
  decide +kernel

theorem row094_layer005_checked :
    coverLayerCheck row094.height row094.goods { lower := 279744, upper := 559488, M := 8 } = true := by
  decide +kernel

theorem row094_layer006_checked :
    coverLayerCheck row094.height row094.goods { lower := 559488, upper := 1118976, M := 7 } = true := by
  decide +kernel

theorem row094_layer007_checked :
    coverLayerCheck row094.height row094.goods { lower := 1118976, upper := 2237952, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer007_checked
