import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer016_checked :
    coverLayerCheck row066.height row066.goods { lower := 281149440, upper := 562298880, M := 3 } = true := by
  decide +kernel

theorem row066_layer017_checked :
    coverLayerCheck row066.height row066.goods { lower := 562298880, upper := 1124597760, M := 3 } = true := by
  decide +kernel

theorem row066_layer018_checked :
    coverLayerCheck row066.height row066.goods { lower := 1124597760, upper := 2249195520, M := 2 } = true := by
  decide +kernel

theorem row066_layer019_checked :
    coverLayerCheck row066.height row066.goods { lower := 2249195520, upper := 4498391040, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer019_checked
