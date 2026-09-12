import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row132Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_layer004_checked :
    coverLayerCheck row132.height row132.goods { lower := 276672, upper := 553344, M := 7 } = true := by
  decide +kernel

theorem row132_layer005_checked :
    coverLayerCheck row132.height row132.goods { lower := 553344, upper := 1106688, M := 5 } = true := by
  decide +kernel

theorem row132_layer006_checked :
    coverLayerCheck row132.height row132.goods { lower := 1106688, upper := 2213376, M := 4 } = true := by
  decide +kernel

theorem row132_layer007_checked :
    coverLayerCheck row132.height row132.goods { lower := 2213376, upper := 4426752, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layer007_checked
