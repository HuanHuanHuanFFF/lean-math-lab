import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer012_checked :
    coverLayerCheck row084.height row084.goods { lower := 28557312, upper := 57114624, M := 6 } = true := by
  decide +kernel

theorem row084_layer013_checked :
    coverLayerCheck row084.height row084.goods { lower := 57114624, upper := 114229248, M := 5 } = true := by
  decide +kernel

theorem row084_layer014_checked :
    coverLayerCheck row084.height row084.goods { lower := 114229248, upper := 228458496, M := 5 } = true := by
  decide +kernel

theorem row084_layer015_checked :
    coverLayerCheck row084.height row084.goods { lower := 228458496, upper := 456916992, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer015_checked
