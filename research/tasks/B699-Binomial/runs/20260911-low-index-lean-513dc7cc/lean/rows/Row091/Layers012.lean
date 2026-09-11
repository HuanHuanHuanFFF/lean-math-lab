import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row091Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer012_checked :
    coverLayerCheck row091.height row091.goods { lower := 33546240, upper := 67092480, M := 4 } = true := by
  decide +kernel

theorem row091_layer013_checked :
    coverLayerCheck row091.height row091.goods { lower := 67092480, upper := 134184960, M := 3 } = true := by
  decide +kernel

theorem row091_layer014_checked :
    coverLayerCheck row091.height row091.goods { lower := 134184960, upper := 268369920, M := 3 } = true := by
  decide +kernel

theorem row091_layer015_checked :
    coverLayerCheck row091.height row091.goods { lower := 268369920, upper := 536739840, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer015_checked
