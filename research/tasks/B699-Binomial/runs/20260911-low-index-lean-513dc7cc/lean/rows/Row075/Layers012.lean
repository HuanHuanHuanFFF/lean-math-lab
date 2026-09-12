import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer012_checked :
    coverLayerCheck row075.height row075.goods { lower := 22732800, upper := 45465600, M := 8 } = true := by
  decide +kernel

theorem row075_layer013_checked :
    coverLayerCheck row075.height row075.goods { lower := 45465600, upper := 90931200, M := 7 } = true := by
  decide +kernel

theorem row075_layer014_checked :
    coverLayerCheck row075.height row075.goods { lower := 90931200, upper := 181862400, M := 6 } = true := by
  decide +kernel

theorem row075_layer015_checked :
    coverLayerCheck row075.height row075.goods { lower := 181862400, upper := 363724800, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer015_checked
