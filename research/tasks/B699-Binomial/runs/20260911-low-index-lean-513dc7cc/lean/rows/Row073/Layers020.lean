import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row073Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer020_checked :
    coverLayerCheck row073.height row073.goods { lower := 5511315456, upper := 11022630912, M := 2 } = true := by
  decide +kernel

theorem row073_layer021_checked :
    coverLayerCheck row073.height row073.goods { lower := 11022630912, upper := 22045261824, M := 2 } = true := by
  decide +kernel

theorem row073_layer022_checked :
    coverLayerCheck row073.height row073.goods { lower := 22045261824, upper := 44090523648, M := 2 } = true := by
  decide +kernel

theorem row073_layer023_checked :
    coverLayerCheck row073.height row073.goods { lower := 44090523648, upper := 88181047296, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer023_checked
