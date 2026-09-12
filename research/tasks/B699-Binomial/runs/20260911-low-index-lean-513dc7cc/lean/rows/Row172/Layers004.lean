import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row172Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row172_layer004_checked :
    coverLayerCheck row172.height row172.goods { lower := 470592, upper := 941184, M := 4 } = true := by
  decide +kernel

theorem row172_layer005_checked :
    coverLayerCheck row172.height row172.goods { lower := 941184, upper := 1882368, M := 3 } = true := by
  decide +kernel

theorem row172_layer006_checked :
    coverLayerCheck row172.height row172.goods { lower := 1882368, upper := 3764736, M := 2 } = true := by
  decide +kernel

theorem row172_layer007_checked :
    coverLayerCheck row172.height row172.goods { lower := 3764736, upper := 7529472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row172_layer007_checked
