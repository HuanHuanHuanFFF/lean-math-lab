import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer044_checked :
    coverLayerCheck row043.height row043.goods { lower := 31771487996215296, upper := 63542975992430592, M := 3 } = true := by
  decide +kernel

theorem row043_layer045_checked :
    coverLayerCheck row043.height row043.goods { lower := 63542975992430592, upper := 127085951984861184, M := 3 } = true := by
  decide +kernel

theorem row043_layer046_checked :
    coverLayerCheck row043.height row043.goods { lower := 127085951984861184, upper := 254171903969722368, M := 3 } = true := by
  decide +kernel

theorem row043_layer047_checked :
    coverLayerCheck row043.height row043.goods { lower := 254171903969722368, upper := 508343807939444736, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer047_checked
