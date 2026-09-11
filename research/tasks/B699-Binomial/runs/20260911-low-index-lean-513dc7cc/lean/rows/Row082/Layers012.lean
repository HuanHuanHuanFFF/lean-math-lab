import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer012_checked :
    coverLayerCheck row082.height row082.goods { lower := 27205632, upper := 54411264, M := 4 } = true := by
  decide +kernel

theorem row082_layer013_checked :
    coverLayerCheck row082.height row082.goods { lower := 54411264, upper := 108822528, M := 4 } = true := by
  decide +kernel

theorem row082_layer014_checked :
    coverLayerCheck row082.height row082.goods { lower := 108822528, upper := 217645056, M := 3 } = true := by
  decide +kernel

theorem row082_layer015_checked :
    coverLayerCheck row082.height row082.goods { lower := 217645056, upper := 435290112, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer015_checked
