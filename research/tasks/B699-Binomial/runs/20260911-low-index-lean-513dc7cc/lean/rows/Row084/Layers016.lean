import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer016_checked :
    coverLayerCheck row084.height row084.goods { lower := 456916992, upper := 913833984, M := 4 } = true := by
  decide +kernel

theorem row084_layer017_checked :
    coverLayerCheck row084.height row084.goods { lower := 913833984, upper := 1827667968, M := 3 } = true := by
  decide +kernel

theorem row084_layer018_checked :
    coverLayerCheck row084.height row084.goods { lower := 1827667968, upper := 3655335936, M := 3 } = true := by
  decide +kernel

theorem row084_layer019_checked :
    coverLayerCheck row084.height row084.goods { lower := 3655335936, upper := 7310671872, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer019_checked
