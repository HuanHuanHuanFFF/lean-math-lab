import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer004_checked :
    coverLayerCheck row066.height row066.goods { lower := 68640, upper := 137280, M := 15 } = true := by
  decide +kernel

theorem row066_layer005_checked :
    coverLayerCheck row066.height row066.goods { lower := 137280, upper := 274560, M := 13 } = true := by
  decide +kernel

theorem row066_layer006_checked :
    coverLayerCheck row066.height row066.goods { lower := 274560, upper := 549120, M := 11 } = true := by
  decide +kernel

theorem row066_layer007_checked :
    coverLayerCheck row066.height row066.goods { lower := 549120, upper := 1098240, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer007_checked
