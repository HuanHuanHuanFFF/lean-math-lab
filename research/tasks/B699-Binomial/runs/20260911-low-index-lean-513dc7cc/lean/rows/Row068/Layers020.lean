import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer020_checked :
    coverLayerCheck row068.height row068.goods { lower := 4777312256, upper := 9554624512, M := 3 } = true := by
  decide +kernel

theorem row068_layer021_checked :
    coverLayerCheck row068.height row068.goods { lower := 9554624512, upper := 19109249024, M := 3 } = true := by
  decide +kernel

theorem row068_layer022_checked :
    coverLayerCheck row068.height row068.goods { lower := 19109249024, upper := 38218498048, M := 2 } = true := by
  decide +kernel

theorem row068_layer023_checked :
    coverLayerCheck row068.height row068.goods { lower := 38218498048, upper := 76436996096, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer023_checked
