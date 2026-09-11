import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer012_checked :
    coverLayerCheck row055.height row055.goods { lower := 12165120, upper := 24330240, M := 12 } = true := by
  decide +kernel

theorem row055_layer013_checked :
    coverLayerCheck row055.height row055.goods { lower := 24330240, upper := 48660480, M := 11 } = true := by
  decide +kernel

theorem row055_layer014_checked :
    coverLayerCheck row055.height row055.goods { lower := 48660480, upper := 97320960, M := 10 } = true := by
  decide +kernel

theorem row055_layer015_checked :
    coverLayerCheck row055.height row055.goods { lower := 97320960, upper := 194641920, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer015_checked
