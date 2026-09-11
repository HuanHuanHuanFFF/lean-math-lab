import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer016_checked :
    coverLayerCheck row090.height row090.goods { lower := 524943360, upper := 1049886720, M := 2 } = true := by
  decide +kernel

theorem row090_layer017_checked :
    coverLayerCheck row090.height row090.goods { lower := 1049886720, upper := 2099773440, M := 2 } = true := by
  decide +kernel

theorem row090_layer018_checked :
    coverLayerCheck row090.height row090.goods { lower := 2099773440, upper := 4199546880, M := 2 } = true := by
  decide +kernel

theorem row090_layer019_checked :
    coverLayerCheck row090.height row090.goods { lower := 4199546880, upper := 8399093760, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer019_checked
