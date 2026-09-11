import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer016_checked :
    coverLayerCheck row053.height row053.goods { lower := 180617216, upper := 361234432, M := 5 } = true := by
  decide +kernel

theorem row053_layer017_checked :
    coverLayerCheck row053.height row053.goods { lower := 361234432, upper := 722468864, M := 5 } = true := by
  decide +kernel

theorem row053_layer018_checked :
    coverLayerCheck row053.height row053.goods { lower := 722468864, upper := 1444937728, M := 4 } = true := by
  decide +kernel

theorem row053_layer019_checked :
    coverLayerCheck row053.height row053.goods { lower := 1444937728, upper := 2889875456, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer019_checked
