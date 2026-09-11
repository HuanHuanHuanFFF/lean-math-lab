import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row121Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row121_layer004_checked :
    coverLayerCheck row121.height row121.goods { lower := 232320, upper := 464640, M := 8 } = true := by
  decide +kernel

theorem row121_layer005_checked :
    coverLayerCheck row121.height row121.goods { lower := 464640, upper := 929280, M := 7 } = true := by
  decide +kernel

theorem row121_layer006_checked :
    coverLayerCheck row121.height row121.goods { lower := 929280, upper := 1858560, M := 5 } = true := by
  decide +kernel

theorem row121_layer007_checked :
    coverLayerCheck row121.height row121.goods { lower := 1858560, upper := 3717120, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row121_layer007_checked
