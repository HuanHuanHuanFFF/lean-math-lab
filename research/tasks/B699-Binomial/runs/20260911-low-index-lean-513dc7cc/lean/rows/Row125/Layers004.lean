import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row125Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer004_checked :
    coverLayerCheck row125.height row125.goods { lower := 248000, upper := 496000, M := 6 } = true := by
  decide +kernel

theorem row125_layer005_checked :
    coverLayerCheck row125.height row125.goods { lower := 496000, upper := 992000, M := 5 } = true := by
  decide +kernel

theorem row125_layer006_checked :
    coverLayerCheck row125.height row125.goods { lower := 992000, upper := 1984000, M := 4 } = true := by
  decide +kernel

theorem row125_layer007_checked :
    coverLayerCheck row125.height row125.goods { lower := 1984000, upper := 3968000, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer007_checked
