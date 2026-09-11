import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer012_checked :
    coverLayerCheck row074.height row074.goods { lower := 22126592, upper := 44253184, M := 9 } = true := by
  decide +kernel

theorem row074_layer013_checked :
    coverLayerCheck row074.height row074.goods { lower := 44253184, upper := 88506368, M := 8 } = true := by
  decide +kernel

theorem row074_layer014_checked :
    coverLayerCheck row074.height row074.goods { lower := 88506368, upper := 177012736, M := 8 } = true := by
  decide +kernel

theorem row074_layer015_checked :
    coverLayerCheck row074.height row074.goods { lower := 177012736, upper := 354025472, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer015_checked
