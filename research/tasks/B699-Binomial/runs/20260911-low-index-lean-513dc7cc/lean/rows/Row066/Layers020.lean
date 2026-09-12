import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer020_checked :
    coverLayerCheck row066.height row066.goods { lower := 4498391040, upper := 8996782080, M := 2 } = true := by
  decide +kernel

theorem row066_layer021_checked :
    coverLayerCheck row066.height row066.goods { lower := 8996782080, upper := 17993564160, M := 2 } = true := by
  decide +kernel

theorem row066_layer022_checked :
    coverLayerCheck row066.height row066.goods { lower := 17993564160, upper := 35987128320, M := 2 } = true := by
  decide +kernel

theorem row066_layer023_checked :
    coverLayerCheck row066.height row066.goods { lower := 35987128320, upper := 71974256640, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer023_checked
