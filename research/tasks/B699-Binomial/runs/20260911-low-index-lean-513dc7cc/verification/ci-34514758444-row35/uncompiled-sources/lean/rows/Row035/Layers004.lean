import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_checked :
    coverLayerCheck row035.height row035.goods { lower := 19040, upper := 38080, M := 34 } = true := by
  decide +kernel

theorem row035_layer005_checked :
    coverLayerCheck row035.height row035.goods { lower := 38080, upper := 76160, M := 34 } = true := by
  decide +kernel

theorem row035_layer006_checked :
    coverLayerCheck row035.height row035.goods { lower := 76160, upper := 152320, M := 33 } = true := by
  decide +kernel

theorem row035_layer007_checked :
    coverLayerCheck row035.height row035.goods { lower := 152320, upper := 304640, M := 32 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_checked
