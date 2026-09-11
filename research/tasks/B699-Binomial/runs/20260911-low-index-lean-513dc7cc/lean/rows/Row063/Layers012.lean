import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer012_checked :
    coverLayerCheck row063.height row063.goods { lower := 15998976, upper := 31997952, M := 10 } = true := by
  decide +kernel

theorem row063_layer013_checked :
    coverLayerCheck row063.height row063.goods { lower := 31997952, upper := 63995904, M := 9 } = true := by
  decide +kernel

theorem row063_layer014_checked :
    coverLayerCheck row063.height row063.goods { lower := 63995904, upper := 127991808, M := 8 } = true := by
  decide +kernel

theorem row063_layer015_checked :
    coverLayerCheck row063.height row063.goods { lower := 127991808, upper := 255983616, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer015_checked
