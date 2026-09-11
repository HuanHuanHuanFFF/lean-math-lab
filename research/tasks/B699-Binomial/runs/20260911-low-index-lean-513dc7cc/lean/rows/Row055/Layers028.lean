import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer028_checked :
    coverLayerCheck row055.height row055.goods { lower := 797253304320, upper := 1594506608640, M := 3 } = true := by
  decide +kernel

theorem row055_layer029_checked :
    coverLayerCheck row055.height row055.goods { lower := 1594506608640, upper := 3189013217280, M := 3 } = true := by
  decide +kernel

theorem row055_layer030_checked :
    coverLayerCheck row055.height row055.goods { lower := 3189013217280, upper := 6378026434560, M := 3 } = true := by
  decide +kernel

theorem row055_layer031_checked :
    coverLayerCheck row055.height row055.goods { lower := 6378026434560, upper := 12756052869120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer031_checked
