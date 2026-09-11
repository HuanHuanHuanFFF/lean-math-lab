import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer004_checked :
    coverLayerCheck row029.height row029.goods { lower := 12992, upper := 25984, M := 29 } = true := by
  decide +kernel

theorem row029_layer005_checked :
    coverLayerCheck row029.height row029.goods { lower := 25984, upper := 51968, M := 28 } = true := by
  decide +kernel

theorem row029_layer006_checked :
    coverLayerCheck row029.height row029.goods { lower := 51968, upper := 103936, M := 27 } = true := by
  decide +kernel

theorem row029_layer007_checked :
    coverLayerCheck row029.height row029.goods { lower := 103936, upper := 207872, M := 27 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer007_checked
