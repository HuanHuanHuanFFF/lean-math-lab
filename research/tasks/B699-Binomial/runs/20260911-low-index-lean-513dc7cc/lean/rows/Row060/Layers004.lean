import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer004_checked :
    coverLayerCheck row060.height row060.goods { lower := 56640, upper := 113280, M := 20 } = true := by
  decide +kernel

theorem row060_layer005_checked :
    coverLayerCheck row060.height row060.goods { lower := 113280, upper := 226560, M := 18 } = true := by
  decide +kernel

theorem row060_layer006_checked :
    coverLayerCheck row060.height row060.goods { lower := 226560, upper := 453120, M := 16 } = true := by
  decide +kernel

theorem row060_layer007_checked :
    coverLayerCheck row060.height row060.goods { lower := 453120, upper := 906240, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer007_checked
