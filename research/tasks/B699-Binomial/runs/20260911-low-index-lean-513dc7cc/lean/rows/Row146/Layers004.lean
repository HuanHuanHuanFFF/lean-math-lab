import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row146Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row146_layer004_checked :
    coverLayerCheck row146.height row146.goods { lower := 338720, upper := 677440, M := 5 } = true := by
  decide +kernel

theorem row146_layer005_checked :
    coverLayerCheck row146.height row146.goods { lower := 677440, upper := 1354880, M := 4 } = true := by
  decide +kernel

theorem row146_layer006_checked :
    coverLayerCheck row146.height row146.goods { lower := 1354880, upper := 2709760, M := 3 } = true := by
  decide +kernel

theorem row146_layer007_checked :
    coverLayerCheck row146.height row146.goods { lower := 2709760, upper := 5419520, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row146_layer007_checked
