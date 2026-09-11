import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row088Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer012_checked :
    coverLayerCheck row088.height row088.goods { lower := 31358976, upper := 62717952, M := 3 } = true := by
  decide +kernel

theorem row088_layer013_checked :
    coverLayerCheck row088.height row088.goods { lower := 62717952, upper := 125435904, M := 3 } = true := by
  decide +kernel

theorem row088_layer014_checked :
    coverLayerCheck row088.height row088.goods { lower := 125435904, upper := 250871808, M := 2 } = true := by
  decide +kernel

theorem row088_layer015_checked :
    coverLayerCheck row088.height row088.goods { lower := 250871808, upper := 501743616, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer015_checked
