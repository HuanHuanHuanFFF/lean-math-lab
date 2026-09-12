import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer012_checked :
    coverLayerCheck row068.height row068.goods { lower := 18661376, upper := 37322752, M := 7 } = true := by
  decide +kernel

theorem row068_layer013_checked :
    coverLayerCheck row068.height row068.goods { lower := 37322752, upper := 74645504, M := 6 } = true := by
  decide +kernel

theorem row068_layer014_checked :
    coverLayerCheck row068.height row068.goods { lower := 74645504, upper := 149291008, M := 6 } = true := by
  decide +kernel

theorem row068_layer015_checked :
    coverLayerCheck row068.height row068.goods { lower := 149291008, upper := 298582016, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer015_checked
