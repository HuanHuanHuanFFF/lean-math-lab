import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer064_checked :
    coverLayerCheck row046.height row046.goods { lower := 38184760232578771845120, upper := 76369520465157543690240, M := 2 } = true := by
  decide +kernel

theorem row046_layer065_checked :
    coverLayerCheck row046.height row046.goods { lower := 76369520465157543690240, upper := 152739040930315087380480, M := 2 } = true := by
  decide +kernel

theorem row046_layer066_checked :
    coverLayerCheck row046.height row046.goods { lower := 152739040930315087380480, upper := 305478081860630174760960, M := 2 } = true := by
  decide +kernel

theorem row046_layer067_checked :
    coverLayerCheck row046.height row046.goods { lower := 305478081860630174760960, upper := 610956163721260349521920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer067_checked
