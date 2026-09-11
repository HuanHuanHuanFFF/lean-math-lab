import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer020_checked :
    coverLayerCheck row076.height row076.goods { lower := 5976883200, upper := 11953766400, M := 2 } = true := by
  decide +kernel

theorem row076_layer021_checked :
    coverLayerCheck row076.height row076.goods { lower := 11953766400, upper := 23907532800, M := 2 } = true := by
  decide +kernel

theorem row076_layer022_checked :
    coverLayerCheck row076.height row076.goods { lower := 23907532800, upper := 47815065600, M := 2 } = true := by
  decide +kernel

theorem row076_layer023_checked :
    coverLayerCheck row076.height row076.goods { lower := 47815065600, upper := 95630131200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer023_checked
