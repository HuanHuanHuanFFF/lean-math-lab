import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer016_checked :
    coverLayerCheck row072.height row072.goods { lower := 335020032, upper := 670040064, M := 4 } = true := by
  decide +kernel

theorem row072_layer017_checked :
    coverLayerCheck row072.height row072.goods { lower := 670040064, upper := 1340080128, M := 4 } = true := by
  decide +kernel

theorem row072_layer018_checked :
    coverLayerCheck row072.height row072.goods { lower := 1340080128, upper := 2680160256, M := 3 } = true := by
  decide +kernel

theorem row072_layer019_checked :
    coverLayerCheck row072.height row072.goods { lower := 2680160256, upper := 5360320512, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer019_checked
