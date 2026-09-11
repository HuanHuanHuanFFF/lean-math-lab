import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer004_checked :
    coverLayerCheck row037.height row037.goods { lower := 21312, upper := 42624, M := 23 } = true := by
  decide +kernel

theorem row037_layer005_checked :
    coverLayerCheck row037.height row037.goods { lower := 42624, upper := 85248, M := 21 } = true := by
  decide +kernel

theorem row037_layer006_checked :
    coverLayerCheck row037.height row037.goods { lower := 85248, upper := 170496, M := 20 } = true := by
  decide +kernel

theorem row037_layer007_checked :
    coverLayerCheck row037.height row037.goods { lower := 170496, upper := 340992, M := 18 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_checked
