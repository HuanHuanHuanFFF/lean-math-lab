import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row137Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_layer004_checked :
    coverLayerCheck row137.height row137.goods { lower := 298112, upper := 596224, M := 5 } = true := by
  decide +kernel

theorem row137_layer005_checked :
    coverLayerCheck row137.height row137.goods { lower := 596224, upper := 1192448, M := 4 } = true := by
  decide +kernel

theorem row137_layer006_checked :
    coverLayerCheck row137.height row137.goods { lower := 1192448, upper := 2384896, M := 3 } = true := by
  decide +kernel

theorem row137_layer007_checked :
    coverLayerCheck row137.height row137.goods { lower := 2384896, upper := 4769792, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layer007_checked
