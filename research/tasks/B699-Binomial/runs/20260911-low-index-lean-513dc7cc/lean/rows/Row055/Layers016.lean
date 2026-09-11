import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer016_checked :
    coverLayerCheck row055.height row055.goods { lower := 194641920, upper := 389283840, M := 8 } = true := by
  decide +kernel

theorem row055_layer017_checked :
    coverLayerCheck row055.height row055.goods { lower := 389283840, upper := 778567680, M := 8 } = true := by
  decide +kernel

theorem row055_layer018_checked :
    coverLayerCheck row055.height row055.goods { lower := 778567680, upper := 1557135360, M := 7 } = true := by
  decide +kernel

theorem row055_layer019_checked :
    coverLayerCheck row055.height row055.goods { lower := 1557135360, upper := 3114270720, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer019_checked
