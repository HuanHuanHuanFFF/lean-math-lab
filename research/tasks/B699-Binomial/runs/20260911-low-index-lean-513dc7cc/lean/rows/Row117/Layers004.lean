import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row117Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row117_layer004_checked :
    coverLayerCheck row117.height row117.goods { lower := 217152, upper := 434304, M := 12 } = true := by
  decide +kernel

theorem row117_layer005_checked :
    coverLayerCheck row117.height row117.goods { lower := 434304, upper := 868608, M := 10 } = true := by
  decide +kernel

theorem row117_layer006_checked :
    coverLayerCheck row117.height row117.goods { lower := 868608, upper := 1737216, M := 8 } = true := by
  decide +kernel

theorem row117_layer007_checked :
    coverLayerCheck row117.height row117.goods { lower := 1737216, upper := 3474432, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row117_layer007_checked
