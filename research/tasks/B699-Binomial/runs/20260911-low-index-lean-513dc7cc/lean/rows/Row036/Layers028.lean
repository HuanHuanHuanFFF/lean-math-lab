import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer028_checked :
    coverLayerCheck row036.height row036.goods { lower := 338228674560, upper := 676457349120, M := 9 } = true := by
  decide +kernel

theorem row036_layer029_checked :
    coverLayerCheck row036.height row036.goods { lower := 676457349120, upper := 1352914698240, M := 9 } = true := by
  decide +kernel

theorem row036_layer030_checked :
    coverLayerCheck row036.height row036.goods { lower := 1352914698240, upper := 2705829396480, M := 9 } = true := by
  decide +kernel

theorem row036_layer031_checked :
    coverLayerCheck row036.height row036.goods { lower := 2705829396480, upper := 5411658792960, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer031_checked
