import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer036_checked :
    coverLayerCheck row054.height row054.goods { lower := 196675142418432, upper := 393350284836864, M := 3 } = true := by
  decide +kernel

theorem row054_layer037_checked :
    coverLayerCheck row054.height row054.goods { lower := 393350284836864, upper := 786700569673728, M := 3 } = true := by
  decide +kernel

theorem row054_layer038_checked :
    coverLayerCheck row054.height row054.goods { lower := 786700569673728, upper := 1573401139347456, M := 2 } = true := by
  decide +kernel

theorem row054_layer039_checked :
    coverLayerCheck row054.height row054.goods { lower := 1573401139347456, upper := 3146802278694912, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer039_checked
