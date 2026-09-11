import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row112Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_layer004_checked :
    coverLayerCheck row112.height row112.goods { lower := 198912, upper := 397824, M := 12 } = true := by
  decide +kernel

theorem row112_layer005_checked :
    coverLayerCheck row112.height row112.goods { lower := 397824, upper := 795648, M := 10 } = true := by
  decide +kernel

theorem row112_layer006_checked :
    coverLayerCheck row112.height row112.goods { lower := 795648, upper := 1591296, M := 9 } = true := by
  decide +kernel

theorem row112_layer007_checked :
    coverLayerCheck row112.height row112.goods { lower := 1591296, upper := 3182592, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layer007_checked
