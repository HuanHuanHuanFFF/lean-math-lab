import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row069Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer016_checked :
    coverLayerCheck row069.height row069.goods { lower := 307494912, upper := 614989824, M := 4 } = true := by
  decide +kernel

theorem row069_layer017_checked :
    coverLayerCheck row069.height row069.goods { lower := 614989824, upper := 1229979648, M := 3 } = true := by
  decide +kernel

theorem row069_layer018_checked :
    coverLayerCheck row069.height row069.goods { lower := 1229979648, upper := 2459959296, M := 3 } = true := by
  decide +kernel

theorem row069_layer019_checked :
    coverLayerCheck row069.height row069.goods { lower := 2459959296, upper := 4919918592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer019_checked
