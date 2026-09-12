import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer024_checked :
    coverLayerCheck row039.height row039.goods { lower := 24863834112, upper := 49727668224, M := 13 } = true := by
  decide +kernel

theorem row039_layer025_checked :
    coverLayerCheck row039.height row039.goods { lower := 49727668224, upper := 99455336448, M := 13 } = true := by
  decide +kernel

theorem row039_layer026_checked :
    coverLayerCheck row039.height row039.goods { lower := 99455336448, upper := 198910672896, M := 12 } = true := by
  decide +kernel

theorem row039_layer027_checked :
    coverLayerCheck row039.height row039.goods { lower := 198910672896, upper := 397821345792, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer027_checked
