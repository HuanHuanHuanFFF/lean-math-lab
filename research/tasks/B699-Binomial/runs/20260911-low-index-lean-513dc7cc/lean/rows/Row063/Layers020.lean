import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer020_checked :
    coverLayerCheck row063.height row063.goods { lower := 4095737856, upper := 8191475712, M := 4 } = true := by
  decide +kernel

theorem row063_layer021_checked :
    coverLayerCheck row063.height row063.goods { lower := 8191475712, upper := 16382951424, M := 4 } = true := by
  decide +kernel

theorem row063_layer022_checked :
    coverLayerCheck row063.height row063.goods { lower := 16382951424, upper := 32765902848, M := 4 } = true := by
  decide +kernel

theorem row063_layer023_checked :
    coverLayerCheck row063.height row063.goods { lower := 32765902848, upper := 65531805696, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer023_checked
