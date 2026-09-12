import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer028_checked :
    coverLayerCheck row063.height row063.goods { lower := 1048508891136, upper := 2097017782272, M := 2 } = true := by
  decide +kernel

theorem row063_layer029_checked :
    coverLayerCheck row063.height row063.goods { lower := 2097017782272, upper := 4194035564544, M := 2 } = true := by
  decide +kernel

theorem row063_layer030_checked :
    coverLayerCheck row063.height row063.goods { lower := 4194035564544, upper := 8388071129088, M := 2 } = true := by
  decide +kernel

theorem row063_layer031_checked :
    coverLayerCheck row063.height row063.goods { lower := 8388071129088, upper := 16776142258176, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer031_checked
