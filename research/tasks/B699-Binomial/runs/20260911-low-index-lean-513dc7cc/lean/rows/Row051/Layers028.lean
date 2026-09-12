import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer028_checked :
    coverLayerCheck row051.height row051.goods { lower := 684510412800, upper := 1369020825600, M := 4 } = true := by
  decide +kernel

theorem row051_layer029_checked :
    coverLayerCheck row051.height row051.goods { lower := 1369020825600, upper := 2738041651200, M := 4 } = true := by
  decide +kernel

theorem row051_layer030_checked :
    coverLayerCheck row051.height row051.goods { lower := 2738041651200, upper := 5476083302400, M := 3 } = true := by
  decide +kernel

theorem row051_layer031_checked :
    coverLayerCheck row051.height row051.goods { lower := 5476083302400, upper := 10952166604800, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer031_checked
