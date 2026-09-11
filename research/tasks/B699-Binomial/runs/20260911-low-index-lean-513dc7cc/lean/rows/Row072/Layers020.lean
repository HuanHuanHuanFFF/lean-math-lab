import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer020_checked :
    coverLayerCheck row072.height row072.goods { lower := 5360320512, upper := 10720641024, M := 3 } = true := by
  decide +kernel

theorem row072_layer021_checked :
    coverLayerCheck row072.height row072.goods { lower := 10720641024, upper := 21441282048, M := 2 } = true := by
  decide +kernel

theorem row072_layer022_checked :
    coverLayerCheck row072.height row072.goods { lower := 21441282048, upper := 42882564096, M := 2 } = true := by
  decide +kernel

theorem row072_layer023_checked :
    coverLayerCheck row072.height row072.goods { lower := 42882564096, upper := 85765128192, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer023_checked
