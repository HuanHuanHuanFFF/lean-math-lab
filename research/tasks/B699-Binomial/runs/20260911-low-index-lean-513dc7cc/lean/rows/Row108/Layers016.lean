import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row108Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer016_checked :
    coverLayerCheck row108.height row108.goods { lower := 757334016, upper := 1514668032, M := 2 } = true := by
  decide +kernel

theorem row108_layer017_checked :
    coverLayerCheck row108.height row108.goods { lower := 1514668032, upper := 3029336064, M := 1 } = true := by
  decide +kernel

theorem row108_layer018_checked :
    coverLayerCheck row108.height row108.goods { lower := 3029336064, upper := 6058672128, M := 1 } = true := by
  decide +kernel

theorem row108_layer019_checked :
    coverLayerCheck row108.height row108.goods { lower := 6058672128, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer019_checked
