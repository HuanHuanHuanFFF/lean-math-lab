import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer020_checked :
    coverLayerCheck row074.height row074.goods { lower := 5664407552, upper := 11328815104, M := 4 } = true := by
  decide +kernel

theorem row074_layer021_checked :
    coverLayerCheck row074.height row074.goods { lower := 11328815104, upper := 22657630208, M := 4 } = true := by
  decide +kernel

theorem row074_layer022_checked :
    coverLayerCheck row074.height row074.goods { lower := 22657630208, upper := 45315260416, M := 3 } = true := by
  decide +kernel

theorem row074_layer023_checked :
    coverLayerCheck row074.height row074.goods { lower := 45315260416, upper := 90630520832, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer023_checked
