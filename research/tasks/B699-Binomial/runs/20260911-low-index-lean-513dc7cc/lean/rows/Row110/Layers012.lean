import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row110Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer012_checked :
    coverLayerCheck row110.height row110.goods { lower := 49111040, upper := 98222080, M := 4 } = true := by
  decide +kernel

theorem row110_layer013_checked :
    coverLayerCheck row110.height row110.goods { lower := 98222080, upper := 196444160, M := 3 } = true := by
  decide +kernel

theorem row110_layer014_checked :
    coverLayerCheck row110.height row110.goods { lower := 196444160, upper := 392888320, M := 3 } = true := by
  decide +kernel

theorem row110_layer015_checked :
    coverLayerCheck row110.height row110.goods { lower := 392888320, upper := 785776640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer015_checked
