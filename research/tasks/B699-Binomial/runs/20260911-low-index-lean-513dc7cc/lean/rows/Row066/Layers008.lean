import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer008_checked :
    coverLayerCheck row066.height row066.goods { lower := 1098240, upper := 2196480, M := 9 } = true := by
  decide +kernel

theorem row066_layer009_checked :
    coverLayerCheck row066.height row066.goods { lower := 2196480, upper := 4392960, M := 7 } = true := by
  decide +kernel

theorem row066_layer010_checked :
    coverLayerCheck row066.height row066.goods { lower := 4392960, upper := 8785920, M := 7 } = true := by
  decide +kernel

theorem row066_layer011_checked :
    coverLayerCheck row066.height row066.goods { lower := 8785920, upper := 17571840, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer011_checked
