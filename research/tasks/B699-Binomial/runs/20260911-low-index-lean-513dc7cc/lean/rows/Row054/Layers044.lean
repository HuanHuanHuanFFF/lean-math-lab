import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer044_checked :
    coverLayerCheck row054.height row054.goods { lower := 50348836459118592, upper := 100697672918237184, M := 2 } = true := by
  decide +kernel

theorem row054_layer045_checked :
    coverLayerCheck row054.height row054.goods { lower := 100697672918237184, upper := 201395345836474368, M := 2 } = true := by
  decide +kernel

theorem row054_layer046_checked :
    coverLayerCheck row054.height row054.goods { lower := 201395345836474368, upper := 402790691672948736, M := 2 } = true := by
  decide +kernel

theorem row054_layer047_checked :
    coverLayerCheck row054.height row054.goods { lower := 402790691672948736, upper := 805581383345897472, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer047_checked
