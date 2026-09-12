import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row155Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row155_layer004_checked :
    coverLayerCheck row155.height row155.goods { lower := 381920, upper := 763840, M := 5 } = true := by
  decide +kernel

theorem row155_layer005_checked :
    coverLayerCheck row155.height row155.goods { lower := 763840, upper := 1527680, M := 4 } = true := by
  decide +kernel

theorem row155_layer006_checked :
    coverLayerCheck row155.height row155.goods { lower := 1527680, upper := 3055360, M := 3 } = true := by
  decide +kernel

theorem row155_layer007_checked :
    coverLayerCheck row155.height row155.goods { lower := 3055360, upper := 6110720, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row155_layer007_checked
