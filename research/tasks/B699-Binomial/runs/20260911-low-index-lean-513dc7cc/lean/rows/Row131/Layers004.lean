import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row131Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer004_checked :
    coverLayerCheck row131.height row131.goods { lower := 272480, upper := 544960, M := 5 } = true := by
  decide +kernel

theorem row131_layer005_checked :
    coverLayerCheck row131.height row131.goods { lower := 544960, upper := 1089920, M := 4 } = true := by
  decide +kernel

theorem row131_layer006_checked :
    coverLayerCheck row131.height row131.goods { lower := 1089920, upper := 2179840, M := 3 } = true := by
  decide +kernel

theorem row131_layer007_checked :
    coverLayerCheck row131.height row131.goods { lower := 2179840, upper := 4359680, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer007_checked
