import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row135Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer004_checked :
    coverLayerCheck row135.height row135.goods { lower := 289440, upper := 578880, M := 6 } = true := by
  decide +kernel

theorem row135_layer005_checked :
    coverLayerCheck row135.height row135.goods { lower := 578880, upper := 1157760, M := 4 } = true := by
  decide +kernel

theorem row135_layer006_checked :
    coverLayerCheck row135.height row135.goods { lower := 1157760, upper := 2315520, M := 3 } = true := by
  decide +kernel

theorem row135_layer007_checked :
    coverLayerCheck row135.height row135.goods { lower := 2315520, upper := 4631040, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer007_checked
