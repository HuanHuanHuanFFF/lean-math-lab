import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row165Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row165_layer004_checked :
    coverLayerCheck row165.height row165.goods { lower := 432960, upper := 865920, M := 4 } = true := by
  decide +kernel

theorem row165_layer005_checked :
    coverLayerCheck row165.height row165.goods { lower := 865920, upper := 1731840, M := 3 } = true := by
  decide +kernel

theorem row165_layer006_checked :
    coverLayerCheck row165.height row165.goods { lower := 1731840, upper := 3463680, M := 3 } = true := by
  decide +kernel

theorem row165_layer007_checked :
    coverLayerCheck row165.height row165.goods { lower := 3463680, upper := 6927360, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row165_layer007_checked
