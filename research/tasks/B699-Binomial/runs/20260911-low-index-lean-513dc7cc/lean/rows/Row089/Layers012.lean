import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row089Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer012_checked :
    coverLayerCheck row089.height row089.goods { lower := 32079872, upper := 64159744, M := 3 } = true := by
  decide +kernel

theorem row089_layer013_checked :
    coverLayerCheck row089.height row089.goods { lower := 64159744, upper := 128319488, M := 2 } = true := by
  decide +kernel

theorem row089_layer014_checked :
    coverLayerCheck row089.height row089.goods { lower := 128319488, upper := 256638976, M := 2 } = true := by
  decide +kernel

theorem row089_layer015_checked :
    coverLayerCheck row089.height row089.goods { lower := 256638976, upper := 513277952, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer015_checked
