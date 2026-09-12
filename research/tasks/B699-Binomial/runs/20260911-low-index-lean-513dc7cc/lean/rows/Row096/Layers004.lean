import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row096Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row096_layer004_checked :
    coverLayerCheck row096.height row096.goods { lower := 145920, upper := 291840, M := 8 } = true := by
  decide +kernel

theorem row096_layer005_checked :
    coverLayerCheck row096.height row096.goods { lower := 291840, upper := 583680, M := 7 } = true := by
  decide +kernel

theorem row096_layer006_checked :
    coverLayerCheck row096.height row096.goods { lower := 583680, upper := 1167360, M := 5 } = true := by
  decide +kernel

theorem row096_layer007_checked :
    coverLayerCheck row096.height row096.goods { lower := 1167360, upper := 2334720, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row096_layer007_checked
