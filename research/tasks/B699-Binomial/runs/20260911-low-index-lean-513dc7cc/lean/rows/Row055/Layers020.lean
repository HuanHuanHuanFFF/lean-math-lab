import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row055Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer020_checked :
    coverLayerCheck row055.height row055.goods { lower := 3114270720, upper := 6228541440, M := 6 } = true := by
  decide +kernel

theorem row055_layer021_checked :
    coverLayerCheck row055.height row055.goods { lower := 6228541440, upper := 12457082880, M := 5 } = true := by
  decide +kernel

theorem row055_layer022_checked :
    coverLayerCheck row055.height row055.goods { lower := 12457082880, upper := 24914165760, M := 5 } = true := by
  decide +kernel

theorem row055_layer023_checked :
    coverLayerCheck row055.height row055.goods { lower := 24914165760, upper := 49828331520, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer023_checked
