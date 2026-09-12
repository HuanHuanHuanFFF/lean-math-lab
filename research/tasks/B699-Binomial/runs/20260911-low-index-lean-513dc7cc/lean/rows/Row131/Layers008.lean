import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row131Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row131_layer008_checked :
    coverLayerCheck row131.height row131.goods { lower := 4359680, upper := 8719360, M := 2 } = true := by
  decide +kernel

theorem row131_layer009_checked :
    coverLayerCheck row131.height row131.goods { lower := 8719360, upper := 17438720, M := 2 } = true := by
  decide +kernel

theorem row131_layer010_checked :
    coverLayerCheck row131.height row131.goods { lower := 17438720, upper := 34877440, M := 1 } = true := by
  decide +kernel

theorem row131_layer011_checked :
    coverLayerCheck row131.height row131.goods { lower := 34877440, upper := 69754880, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row131_layer011_checked
