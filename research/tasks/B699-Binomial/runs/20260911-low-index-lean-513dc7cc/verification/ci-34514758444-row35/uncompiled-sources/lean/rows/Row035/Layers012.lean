import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer012_checked :
    coverLayerCheck row035.height row035.goods { lower := 4874240, upper := 9748480, M := 29 } = true := by
  decide +kernel

theorem row035_layer013_checked :
    coverLayerCheck row035.height row035.goods { lower := 9748480, upper := 19496960, M := 28 } = true := by
  decide +kernel

theorem row035_layer014_checked :
    coverLayerCheck row035.height row035.goods { lower := 19496960, upper := 38993920, M := 27 } = true := by
  decide +kernel

theorem row035_layer015_checked :
    coverLayerCheck row035.height row035.goods { lower := 38993920, upper := 77987840, M := 27 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_checked
