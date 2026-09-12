import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row067Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer012_checked :
    coverLayerCheck row067.height row067.goods { lower := 18112512, upper := 36225024, M := 4 } = true := by
  decide +kernel

theorem row067_layer013_checked :
    coverLayerCheck row067.height row067.goods { lower := 36225024, upper := 72450048, M := 3 } = true := by
  decide +kernel

theorem row067_layer014_checked :
    coverLayerCheck row067.height row067.goods { lower := 72450048, upper := 144900096, M := 3 } = true := by
  decide +kernel

theorem row067_layer015_checked :
    coverLayerCheck row067.height row067.goods { lower := 144900096, upper := 289800192, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer015_checked
