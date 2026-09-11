import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row171Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_layer004_checked :
    coverLayerCheck row171.height row171.goods { lower := 465120, upper := 930240, M := 4 } = true := by
  decide +kernel

theorem row171_layer005_checked :
    coverLayerCheck row171.height row171.goods { lower := 930240, upper := 1860480, M := 3 } = true := by
  decide +kernel

theorem row171_layer006_checked :
    coverLayerCheck row171.height row171.goods { lower := 1860480, upper := 3720960, M := 2 } = true := by
  decide +kernel

theorem row171_layer007_checked :
    coverLayerCheck row171.height row171.goods { lower := 3720960, upper := 7441920, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layer007_checked
