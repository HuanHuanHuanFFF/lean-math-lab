import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer020_checked :
    coverLayerCheck row037.height row037.goods { lower := 1396703232, upper := 2793406464, M := 8 } = true := by
  decide +kernel

theorem row037_layer021_checked :
    coverLayerCheck row037.height row037.goods { lower := 2793406464, upper := 5586812928, M := 7 } = true := by
  decide +kernel

theorem row037_layer022_checked :
    coverLayerCheck row037.height row037.goods { lower := 5586812928, upper := 11173625856, M := 7 } = true := by
  decide +kernel

theorem row037_layer023_checked :
    coverLayerCheck row037.height row037.goods { lower := 11173625856, upper := 22347251712, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_checked
