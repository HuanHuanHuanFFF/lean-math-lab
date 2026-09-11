import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row157Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_layer004_checked :
    coverLayerCheck row157.height row157.goods { lower := 391872, upper := 783744, M := 4 } = true := by
  decide +kernel

theorem row157_layer005_checked :
    coverLayerCheck row157.height row157.goods { lower := 783744, upper := 1567488, M := 3 } = true := by
  decide +kernel

theorem row157_layer006_checked :
    coverLayerCheck row157.height row157.goods { lower := 1567488, upper := 3134976, M := 2 } = true := by
  decide +kernel

theorem row157_layer007_checked :
    coverLayerCheck row157.height row157.goods { lower := 3134976, upper := 6269952, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layer007_checked
