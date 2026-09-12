import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row115Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer016_checked :
    coverLayerCheck row115.height row115.goods { lower := 859176960, upper := 1718353920, M := 2 } = true := by
  decide +kernel

theorem row115_layer017_checked :
    coverLayerCheck row115.height row115.goods { lower := 1718353920, upper := 3436707840, M := 2 } = true := by
  decide +kernel

theorem row115_layer018_checked :
    coverLayerCheck row115.height row115.goods { lower := 3436707840, upper := 6873415680, M := 1 } = true := by
  decide +kernel

theorem row115_layer019_checked :
    coverLayerCheck row115.height row115.goods { lower := 6873415680, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer019_checked
