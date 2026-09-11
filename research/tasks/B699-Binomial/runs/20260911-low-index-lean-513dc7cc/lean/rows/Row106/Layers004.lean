import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row106Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer004_checked :
    coverLayerCheck row106.height row106.goods { lower := 178080, upper := 356160, M := 10 } = true := by
  decide +kernel

theorem row106_layer005_checked :
    coverLayerCheck row106.height row106.goods { lower := 356160, upper := 712320, M := 8 } = true := by
  decide +kernel

theorem row106_layer006_checked :
    coverLayerCheck row106.height row106.goods { lower := 712320, upper := 1424640, M := 7 } = true := by
  decide +kernel

theorem row106_layer007_checked :
    coverLayerCheck row106.height row106.goods { lower := 1424640, upper := 2849280, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer007_checked
