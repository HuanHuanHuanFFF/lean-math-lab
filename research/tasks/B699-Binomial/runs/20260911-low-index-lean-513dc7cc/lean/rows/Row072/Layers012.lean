import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_layer012_checked :
    coverLayerCheck row072.height row072.goods { lower := 20938752, upper := 41877504, M := 7 } = true := by
  decide +kernel

theorem row072_layer013_checked :
    coverLayerCheck row072.height row072.goods { lower := 41877504, upper := 83755008, M := 6 } = true := by
  decide +kernel

theorem row072_layer014_checked :
    coverLayerCheck row072.height row072.goods { lower := 83755008, upper := 167510016, M := 5 } = true := by
  decide +kernel

theorem row072_layer015_checked :
    coverLayerCheck row072.height row072.goods { lower := 167510016, upper := 335020032, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layer015_checked
