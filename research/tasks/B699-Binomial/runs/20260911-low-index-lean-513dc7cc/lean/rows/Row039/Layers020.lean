import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer020_checked :
    coverLayerCheck row039.height row039.goods { lower := 1553989632, upper := 3107979264, M := 16 } = true := by
  decide +kernel

theorem row039_layer021_checked :
    coverLayerCheck row039.height row039.goods { lower := 3107979264, upper := 6215958528, M := 15 } = true := by
  decide +kernel

theorem row039_layer022_checked :
    coverLayerCheck row039.height row039.goods { lower := 6215958528, upper := 12431917056, M := 14 } = true := by
  decide +kernel

theorem row039_layer023_checked :
    coverLayerCheck row039.height row039.goods { lower := 12431917056, upper := 24863834112, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer023_checked
