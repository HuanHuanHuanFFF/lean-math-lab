import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer024_checked :
    coverLayerCheck row072.height row072.goods { lower := 85765128192, upper := 171530256384, M := 2 } = true := by
  decide +kernel

theorem row072_layer025_checked :
    coverLayerCheck row072.height row072.goods { lower := 171530256384, upper := 343060512768, M := 2 } = true := by
  decide +kernel

theorem row072_layer026_checked :
    coverLayerCheck row072.height row072.goods { lower := 343060512768, upper := 686121025536, M := 1 } = true := by
  decide +kernel

theorem row072_layer027_checked :
    coverLayerCheck row072.height row072.goods { lower := 686121025536, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer027_checked
