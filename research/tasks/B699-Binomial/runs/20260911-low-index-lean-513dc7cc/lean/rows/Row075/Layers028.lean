import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer028_checked :
    coverLayerCheck row075.height row075.goods { lower := 1489816780800, upper := 2979633561600, M := 1 } = true := by
  decide +kernel

theorem row075_layer029_checked :
    coverLayerCheck row075.height row075.goods { lower := 2979633561600, upper := 5959267123200, M := 1 } = true := by
  decide +kernel

theorem row075_layer030_checked :
    coverLayerCheck row075.height row075.goods { lower := 5959267123200, upper := 10000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer030_checked
