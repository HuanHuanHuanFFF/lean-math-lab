import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row130Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row130_layer004_checked :
    coverLayerCheck row130.height row130.goods { lower := 268320, upper := 536640, M := 6 } = true := by
  decide +kernel

theorem row130_layer005_checked :
    coverLayerCheck row130.height row130.goods { lower := 536640, upper := 1073280, M := 5 } = true := by
  decide +kernel

theorem row130_layer006_checked :
    coverLayerCheck row130.height row130.goods { lower := 1073280, upper := 2146560, M := 4 } = true := by
  decide +kernel

theorem row130_layer007_checked :
    coverLayerCheck row130.height row130.goods { lower := 2146560, upper := 4293120, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row130_layer007_checked
