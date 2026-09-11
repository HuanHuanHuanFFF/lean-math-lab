import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer040_checked :
    coverLayerCheck row043.height row043.goods { lower := 1985717999763456, upper := 3971435999526912, M := 4 } = true := by
  decide +kernel

theorem row043_layer041_checked :
    coverLayerCheck row043.height row043.goods { lower := 3971435999526912, upper := 7942871999053824, M := 4 } = true := by
  decide +kernel

theorem row043_layer042_checked :
    coverLayerCheck row043.height row043.goods { lower := 7942871999053824, upper := 15885743998107648, M := 4 } = true := by
  decide +kernel

theorem row043_layer043_checked :
    coverLayerCheck row043.height row043.goods { lower := 15885743998107648, upper := 31771487996215296, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer043_checked
