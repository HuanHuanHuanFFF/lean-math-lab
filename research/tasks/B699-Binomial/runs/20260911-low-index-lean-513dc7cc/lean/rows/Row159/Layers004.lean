import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row159Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_layer004_checked :
    coverLayerCheck row159.height row159.goods { lower := 401952, upper := 803904, M := 5 } = true := by
  decide +kernel

theorem row159_layer005_checked :
    coverLayerCheck row159.height row159.goods { lower := 803904, upper := 1607808, M := 4 } = true := by
  decide +kernel

theorem row159_layer006_checked :
    coverLayerCheck row159.height row159.goods { lower := 1607808, upper := 3215616, M := 3 } = true := by
  decide +kernel

theorem row159_layer007_checked :
    coverLayerCheck row159.height row159.goods { lower := 3215616, upper := 6431232, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layer007_checked
