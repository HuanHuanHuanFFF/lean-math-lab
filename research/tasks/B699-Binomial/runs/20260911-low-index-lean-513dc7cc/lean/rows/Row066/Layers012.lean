import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_layer012_checked :
    coverLayerCheck row066.height row066.goods { lower := 17571840, upper := 35143680, M := 5 } = true := by
  decide +kernel

theorem row066_layer013_checked :
    coverLayerCheck row066.height row066.goods { lower := 35143680, upper := 70287360, M := 4 } = true := by
  decide +kernel

theorem row066_layer014_checked :
    coverLayerCheck row066.height row066.goods { lower := 70287360, upper := 140574720, M := 4 } = true := by
  decide +kernel

theorem row066_layer015_checked :
    coverLayerCheck row066.height row066.goods { lower := 140574720, upper := 281149440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layer015_checked
