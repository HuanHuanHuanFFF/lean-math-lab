import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row117Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer012_checked :
    coverLayerCheck row117.height row117.goods { lower := 55590912, upper := 111181824, M := 3 } = true := by
  decide +kernel

theorem row117_layer013_checked :
    coverLayerCheck row117.height row117.goods { lower := 111181824, upper := 222363648, M := 2 } = true := by
  decide +kernel

theorem row117_layer014_checked :
    coverLayerCheck row117.height row117.goods { lower := 222363648, upper := 444727296, M := 2 } = true := by
  decide +kernel

theorem row117_layer015_checked :
    coverLayerCheck row117.height row117.goods { lower := 444727296, upper := 889454592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer015_checked
