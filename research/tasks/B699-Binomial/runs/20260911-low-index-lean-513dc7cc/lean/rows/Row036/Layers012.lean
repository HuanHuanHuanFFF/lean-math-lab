import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer012_checked :
    coverLayerCheck row036.height row036.goods { lower := 5160960, upper := 10321920, M := 19 } = true := by
  decide +kernel

theorem row036_layer013_checked :
    coverLayerCheck row036.height row036.goods { lower := 10321920, upper := 20643840, M := 18 } = true := by
  decide +kernel

theorem row036_layer014_checked :
    coverLayerCheck row036.height row036.goods { lower := 20643840, upper := 41287680, M := 18 } = true := by
  decide +kernel

theorem row036_layer015_checked :
    coverLayerCheck row036.height row036.goods { lower := 41287680, upper := 82575360, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer015_checked
