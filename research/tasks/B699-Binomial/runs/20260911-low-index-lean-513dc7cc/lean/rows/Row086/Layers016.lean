import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row086Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer016_checked :
    coverLayerCheck row086.height row086.goods { lower := 479068160, upper := 958136320, M := 2 } = true := by
  decide +kernel

theorem row086_layer017_checked :
    coverLayerCheck row086.height row086.goods { lower := 958136320, upper := 1916272640, M := 2 } = true := by
  decide +kernel

theorem row086_layer018_checked :
    coverLayerCheck row086.height row086.goods { lower := 1916272640, upper := 3832545280, M := 2 } = true := by
  decide +kernel

theorem row086_layer019_checked :
    coverLayerCheck row086.height row086.goods { lower := 3832545280, upper := 7665090560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer019_checked
