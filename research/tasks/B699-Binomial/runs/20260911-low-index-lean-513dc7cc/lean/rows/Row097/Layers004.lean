import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row097Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer004_checked :
    coverLayerCheck row097.height row097.goods { lower := 148992, upper := 297984, M := 7 } = true := by
  decide +kernel

theorem row097_layer005_checked :
    coverLayerCheck row097.height row097.goods { lower := 297984, upper := 595968, M := 6 } = true := by
  decide +kernel

theorem row097_layer006_checked :
    coverLayerCheck row097.height row097.goods { lower := 595968, upper := 1191936, M := 5 } = true := by
  decide +kernel

theorem row097_layer007_checked :
    coverLayerCheck row097.height row097.goods { lower := 1191936, upper := 2383872, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer007_checked
