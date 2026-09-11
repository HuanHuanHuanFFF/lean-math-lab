import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row104Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer004_checked :
    coverLayerCheck row104.height row104.goods { lower := 171392, upper := 342784, M := 12 } = true := by
  decide +kernel

theorem row104_layer005_checked :
    coverLayerCheck row104.height row104.goods { lower := 342784, upper := 685568, M := 10 } = true := by
  decide +kernel

theorem row104_layer006_checked :
    coverLayerCheck row104.height row104.goods { lower := 685568, upper := 1371136, M := 8 } = true := by
  decide +kernel

theorem row104_layer007_checked :
    coverLayerCheck row104.height row104.goods { lower := 1371136, upper := 2742272, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer007_checked
