import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer016_checked :
    coverLayerCheck row074.height row074.goods { lower := 354025472, upper := 708050944, M := 6 } = true := by
  decide +kernel

theorem row074_layer017_checked :
    coverLayerCheck row074.height row074.goods { lower := 708050944, upper := 1416101888, M := 5 } = true := by
  decide +kernel

theorem row074_layer018_checked :
    coverLayerCheck row074.height row074.goods { lower := 1416101888, upper := 2832203776, M := 5 } = true := by
  decide +kernel

theorem row074_layer019_checked :
    coverLayerCheck row074.height row074.goods { lower := 2832203776, upper := 5664407552, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer019_checked
