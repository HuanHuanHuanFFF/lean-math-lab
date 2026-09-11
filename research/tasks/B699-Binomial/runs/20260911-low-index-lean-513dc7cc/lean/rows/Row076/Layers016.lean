import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer016_checked :
    coverLayerCheck row076.height row076.goods { lower := 373555200, upper := 747110400, M := 4 } = true := by
  decide +kernel

theorem row076_layer017_checked :
    coverLayerCheck row076.height row076.goods { lower := 747110400, upper := 1494220800, M := 3 } = true := by
  decide +kernel

theorem row076_layer018_checked :
    coverLayerCheck row076.height row076.goods { lower := 1494220800, upper := 2988441600, M := 3 } = true := by
  decide +kernel

theorem row076_layer019_checked :
    coverLayerCheck row076.height row076.goods { lower := 2988441600, upper := 5976883200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer019_checked
