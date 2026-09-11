import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row106Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer012_checked :
    coverLayerCheck row106.height row106.goods { lower := 45588480, upper := 91176960, M := 2 } = true := by
  decide +kernel

theorem row106_layer013_checked :
    coverLayerCheck row106.height row106.goods { lower := 91176960, upper := 182353920, M := 2 } = true := by
  decide +kernel

theorem row106_layer014_checked :
    coverLayerCheck row106.height row106.goods { lower := 182353920, upper := 364707840, M := 2 } = true := by
  decide +kernel

theorem row106_layer015_checked :
    coverLayerCheck row106.height row106.goods { lower := 364707840, upper := 729415680, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer015_checked
