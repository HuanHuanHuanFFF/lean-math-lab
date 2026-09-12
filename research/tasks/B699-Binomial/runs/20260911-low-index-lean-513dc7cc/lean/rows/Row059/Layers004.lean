import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row059Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer004_checked :
    coverLayerCheck row059.height row059.goods { lower := 54752, upper := 109504, M := 13 } = true := by
  decide +kernel

theorem row059_layer005_checked :
    coverLayerCheck row059.height row059.goods { lower := 109504, upper := 219008, M := 11 } = true := by
  decide +kernel

theorem row059_layer006_checked :
    coverLayerCheck row059.height row059.goods { lower := 219008, upper := 438016, M := 10 } = true := by
  decide +kernel

theorem row059_layer007_checked :
    coverLayerCheck row059.height row059.goods { lower := 438016, upper := 876032, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer007_checked
