import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row088Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer004_checked :
    coverLayerCheck row088.height row088.goods { lower := 122496, upper := 244992, M := 12 } = true := by
  decide +kernel

theorem row088_layer005_checked :
    coverLayerCheck row088.height row088.goods { lower := 244992, upper := 489984, M := 10 } = true := by
  decide +kernel

theorem row088_layer006_checked :
    coverLayerCheck row088.height row088.goods { lower := 489984, upper := 979968, M := 8 } = true := by
  decide +kernel

theorem row088_layer007_checked :
    coverLayerCheck row088.height row088.goods { lower := 979968, upper := 1959936, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer007_checked
