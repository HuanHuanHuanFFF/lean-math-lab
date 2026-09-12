import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row101Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer012_checked :
    coverLayerCheck row101.height row101.goods { lower := 41369600, upper := 82739200, M := 2 } = true := by
  decide +kernel

theorem row101_layer013_checked :
    coverLayerCheck row101.height row101.goods { lower := 82739200, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer013_checked
