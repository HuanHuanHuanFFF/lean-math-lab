import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row091Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer004_checked :
    coverLayerCheck row091.height row091.goods { lower := 131040, upper := 262080, M := 13 } = true := by
  decide +kernel

theorem row091_layer005_checked :
    coverLayerCheck row091.height row091.goods { lower := 262080, upper := 524160, M := 11 } = true := by
  decide +kernel

theorem row091_layer006_checked :
    coverLayerCheck row091.height row091.goods { lower := 524160, upper := 1048320, M := 9 } = true := by
  decide +kernel

theorem row091_layer007_checked :
    coverLayerCheck row091.height row091.goods { lower := 1048320, upper := 2096640, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer007_checked
