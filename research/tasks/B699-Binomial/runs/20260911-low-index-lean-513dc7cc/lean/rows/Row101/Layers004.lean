import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row101Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer004_checked :
    coverLayerCheck row101.height row101.goods { lower := 161600, upper := 323200, M := 7 } = true := by
  decide +kernel

theorem row101_layer005_checked :
    coverLayerCheck row101.height row101.goods { lower := 323200, upper := 646400, M := 6 } = true := by
  decide +kernel

theorem row101_layer006_checked :
    coverLayerCheck row101.height row101.goods { lower := 646400, upper := 1292800, M := 5 } = true := by
  decide +kernel

theorem row101_layer007_checked :
    coverLayerCheck row101.height row101.goods { lower := 1292800, upper := 2585600, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer007_checked
