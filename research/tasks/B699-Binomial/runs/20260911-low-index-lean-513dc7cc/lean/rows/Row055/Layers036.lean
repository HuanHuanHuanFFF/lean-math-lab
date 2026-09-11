import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer036_checked :
    coverLayerCheck row055.height row055.goods { lower := 204096845905920, upper := 408193691811840, M := 2 } = true := by
  decide +kernel

theorem row055_layer037_checked :
    coverLayerCheck row055.height row055.goods { lower := 408193691811840, upper := 816387383623680, M := 2 } = true := by
  decide +kernel

theorem row055_layer038_checked :
    coverLayerCheck row055.height row055.goods { lower := 816387383623680, upper := 1000000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer038_checked
