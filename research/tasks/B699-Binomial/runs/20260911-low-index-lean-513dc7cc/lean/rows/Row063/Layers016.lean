import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer016_checked :
    coverLayerCheck row063.height row063.goods { lower := 255983616, upper := 511967232, M := 6 } = true := by
  decide +kernel

theorem row063_layer017_checked :
    coverLayerCheck row063.height row063.goods { lower := 511967232, upper := 1023934464, M := 6 } = true := by
  decide +kernel

theorem row063_layer018_checked :
    coverLayerCheck row063.height row063.goods { lower := 1023934464, upper := 2047868928, M := 5 } = true := by
  decide +kernel

theorem row063_layer019_checked :
    coverLayerCheck row063.height row063.goods { lower := 2047868928, upper := 4095737856, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer019_checked
