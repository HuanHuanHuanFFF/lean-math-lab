import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row119Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer004_checked :
    coverLayerCheck row119.height row119.goods { lower := 224672, upper := 449344, M := 10 } = true := by
  decide +kernel

theorem row119_layer005_checked :
    coverLayerCheck row119.height row119.goods { lower := 449344, upper := 898688, M := 8 } = true := by
  decide +kernel

theorem row119_layer006_checked :
    coverLayerCheck row119.height row119.goods { lower := 898688, upper := 1797376, M := 7 } = true := by
  decide +kernel

theorem row119_layer007_checked :
    coverLayerCheck row119.height row119.goods { lower := 1797376, upper := 3594752, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer007_checked
