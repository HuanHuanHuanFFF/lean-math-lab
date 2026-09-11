import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer024_checked :
    coverLayerCheck row074.height row074.goods { lower := 90630520832, upper := 181261041664, M := 3 } = true := by
  decide +kernel

theorem row074_layer025_checked :
    coverLayerCheck row074.height row074.goods { lower := 181261041664, upper := 362522083328, M := 2 } = true := by
  decide +kernel

theorem row074_layer026_checked :
    coverLayerCheck row074.height row074.goods { lower := 362522083328, upper := 725044166656, M := 2 } = true := by
  decide +kernel

theorem row074_layer027_checked :
    coverLayerCheck row074.height row074.goods { lower := 725044166656, upper := 1450088333312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer027_checked
