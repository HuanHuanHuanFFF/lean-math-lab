import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer024_checked :
    coverLayerCheck row063.height row063.goods { lower := 65531805696, upper := 131063611392, M := 3 } = true := by
  decide +kernel

theorem row063_layer025_checked :
    coverLayerCheck row063.height row063.goods { lower := 131063611392, upper := 262127222784, M := 3 } = true := by
  decide +kernel

theorem row063_layer026_checked :
    coverLayerCheck row063.height row063.goods { lower := 262127222784, upper := 524254445568, M := 2 } = true := by
  decide +kernel

theorem row063_layer027_checked :
    coverLayerCheck row063.height row063.goods { lower := 524254445568, upper := 1048508891136, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer027_checked
