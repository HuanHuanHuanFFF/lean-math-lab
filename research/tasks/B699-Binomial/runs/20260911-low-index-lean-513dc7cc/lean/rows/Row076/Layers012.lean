import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer012_checked :
    coverLayerCheck row076.height row076.goods { lower := 23347200, upper := 46694400, M := 6 } = true := by
  decide +kernel

theorem row076_layer013_checked :
    coverLayerCheck row076.height row076.goods { lower := 46694400, upper := 93388800, M := 6 } = true := by
  decide +kernel

theorem row076_layer014_checked :
    coverLayerCheck row076.height row076.goods { lower := 93388800, upper := 186777600, M := 5 } = true := by
  decide +kernel

theorem row076_layer015_checked :
    coverLayerCheck row076.height row076.goods { lower := 186777600, upper := 373555200, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer015_checked
