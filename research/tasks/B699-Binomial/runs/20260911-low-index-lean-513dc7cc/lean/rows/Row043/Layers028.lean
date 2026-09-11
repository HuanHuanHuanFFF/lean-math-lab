import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer028_checked :
    coverLayerCheck row043.height row043.goods { lower := 484794433536, upper := 969588867072, M := 7 } = true := by
  decide +kernel

theorem row043_layer029_checked :
    coverLayerCheck row043.height row043.goods { lower := 969588867072, upper := 1939177734144, M := 7 } = true := by
  decide +kernel

theorem row043_layer030_checked :
    coverLayerCheck row043.height row043.goods { lower := 1939177734144, upper := 3878355468288, M := 7 } = true := by
  decide +kernel

theorem row043_layer031_checked :
    coverLayerCheck row043.height row043.goods { lower := 3878355468288, upper := 7756710936576, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer031_checked
