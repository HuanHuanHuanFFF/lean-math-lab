import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer024_checked :
    coverLayerCheck row043.height row043.goods { lower := 30299652096, upper := 60599304192, M := 9 } = true := by
  decide +kernel

theorem row043_layer025_checked :
    coverLayerCheck row043.height row043.goods { lower := 60599304192, upper := 121198608384, M := 9 } = true := by
  decide +kernel

theorem row043_layer026_checked :
    coverLayerCheck row043.height row043.goods { lower := 121198608384, upper := 242397216768, M := 8 } = true := by
  decide +kernel

theorem row043_layer027_checked :
    coverLayerCheck row043.height row043.goods { lower := 242397216768, upper := 484794433536, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer027_checked
