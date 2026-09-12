import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row116Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer016_checked :
    coverLayerCheck row116.height row116.goods { lower := 874250240, upper := 1748500480, M := 2 } = true := by
  decide +kernel

theorem row116_layer017_checked :
    coverLayerCheck row116.height row116.goods { lower := 1748500480, upper := 3497000960, M := 1 } = true := by
  decide +kernel

theorem row116_layer018_checked :
    coverLayerCheck row116.height row116.goods { lower := 3497000960, upper := 6994001920, M := 1 } = true := by
  decide +kernel

theorem row116_layer019_checked :
    coverLayerCheck row116.height row116.goods { lower := 6994001920, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer019_checked
