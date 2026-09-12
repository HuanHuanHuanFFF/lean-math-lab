import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row077Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer016_checked :
    coverLayerCheck row077.height row077.goods { lower := 383516672, upper := 767033344, M := 3 } = true := by
  decide +kernel

theorem row077_layer017_checked :
    coverLayerCheck row077.height row077.goods { lower := 767033344, upper := 1534066688, M := 3 } = true := by
  decide +kernel

theorem row077_layer018_checked :
    coverLayerCheck row077.height row077.goods { lower := 1534066688, upper := 3068133376, M := 2 } = true := by
  decide +kernel

theorem row077_layer019_checked :
    coverLayerCheck row077.height row077.goods { lower := 3068133376, upper := 6136266752, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer019_checked
