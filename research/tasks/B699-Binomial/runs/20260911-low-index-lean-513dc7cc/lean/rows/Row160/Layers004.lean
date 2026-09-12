import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row160Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer004_checked :
    coverLayerCheck row160.height row160.goods { lower := 407040, upper := 814080, M := 5 } = true := by
  decide +kernel

theorem row160_layer005_checked :
    coverLayerCheck row160.height row160.goods { lower := 814080, upper := 1628160, M := 4 } = true := by
  decide +kernel

theorem row160_layer006_checked :
    coverLayerCheck row160.height row160.goods { lower := 1628160, upper := 3256320, M := 3 } = true := by
  decide +kernel

theorem row160_layer007_checked :
    coverLayerCheck row160.height row160.goods { lower := 3256320, upper := 6512640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer007_checked
