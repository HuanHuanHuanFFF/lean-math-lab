import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer064_checked :
    coverLayerCheck row035.height row035.goods { lower := 21951625447714366423040, upper := 43903250895428732846080, M := 9 } = true := by
  decide +kernel

theorem row035_layer065_checked :
    coverLayerCheck row035.height row035.goods { lower := 43903250895428732846080, upper := 87806501790857465692160, M := 8 } = true := by
  decide +kernel

theorem row035_layer066_checked :
    coverLayerCheck row035.height row035.goods { lower := 87806501790857465692160, upper := 175613003581714931384320, M := 8 } = true := by
  decide +kernel

theorem row035_layer067_checked :
    coverLayerCheck row035.height row035.goods { lower := 175613003581714931384320, upper := 351226007163429862768640, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer067_checked
