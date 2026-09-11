import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer024_checked :
    coverLayerCheck row055.height row055.goods { lower := 49828331520, upper := 99656663040, M := 4 } = true := by
  decide +kernel

theorem row055_layer025_checked :
    coverLayerCheck row055.height row055.goods { lower := 99656663040, upper := 199313326080, M := 4 } = true := by
  decide +kernel

theorem row055_layer026_checked :
    coverLayerCheck row055.height row055.goods { lower := 199313326080, upper := 398626652160, M := 4 } = true := by
  decide +kernel

theorem row055_layer027_checked :
    coverLayerCheck row055.height row055.goods { lower := 398626652160, upper := 797253304320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer027_checked
