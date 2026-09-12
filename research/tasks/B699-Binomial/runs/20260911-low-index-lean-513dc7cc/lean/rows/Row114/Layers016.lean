import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row114Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer016_checked :
    coverLayerCheck row114.height row114.goods { lower := 844234752, upper := 1688469504, M := 2 } = true := by
  decide +kernel

theorem row114_layer017_checked :
    coverLayerCheck row114.height row114.goods { lower := 1688469504, upper := 3376939008, M := 2 } = true := by
  decide +kernel

theorem row114_layer018_checked :
    coverLayerCheck row114.height row114.goods { lower := 3376939008, upper := 6753878016, M := 2 } = true := by
  decide +kernel

theorem row114_layer019_checked :
    coverLayerCheck row114.height row114.goods { lower := 6753878016, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer019_checked
