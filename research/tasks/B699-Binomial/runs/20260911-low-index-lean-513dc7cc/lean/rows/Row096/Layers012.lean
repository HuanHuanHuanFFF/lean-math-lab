import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row096Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer012_checked :
    coverLayerCheck row096.height row096.goods { lower := 37355520, upper := 74711040, M := 2 } = true := by
  decide +kernel

theorem row096_layer013_checked :
    coverLayerCheck row096.height row096.goods { lower := 74711040, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer013_checked
