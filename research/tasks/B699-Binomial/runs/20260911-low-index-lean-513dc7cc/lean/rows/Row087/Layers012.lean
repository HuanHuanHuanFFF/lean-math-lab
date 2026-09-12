import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer012_checked :
    coverLayerCheck row087.height row087.goods { lower := 30646272, upper := 61292544, M := 4 } = true := by
  decide +kernel

theorem row087_layer013_checked :
    coverLayerCheck row087.height row087.goods { lower := 61292544, upper := 122585088, M := 3 } = true := by
  decide +kernel

theorem row087_layer014_checked :
    coverLayerCheck row087.height row087.goods { lower := 122585088, upper := 245170176, M := 3 } = true := by
  decide +kernel

theorem row087_layer015_checked :
    coverLayerCheck row087.height row087.goods { lower := 245170176, upper := 490340352, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer015_checked
