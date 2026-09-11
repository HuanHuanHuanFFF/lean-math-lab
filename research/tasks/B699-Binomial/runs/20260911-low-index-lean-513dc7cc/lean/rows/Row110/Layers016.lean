import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row110Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer016_checked :
    coverLayerCheck row110.height row110.goods { lower := 785776640, upper := 1571553280, M := 2 } = true := by
  decide +kernel

theorem row110_layer017_checked :
    coverLayerCheck row110.height row110.goods { lower := 1571553280, upper := 3143106560, M := 2 } = true := by
  decide +kernel

theorem row110_layer018_checked :
    coverLayerCheck row110.height row110.goods { lower := 3143106560, upper := 6286213120, M := 2 } = true := by
  decide +kernel

theorem row110_layer019_checked :
    coverLayerCheck row110.height row110.goods { lower := 6286213120, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer019_checked
