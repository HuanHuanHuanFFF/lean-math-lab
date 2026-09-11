import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer016_checked :
    coverLayerCheck row070.height row070.goods { lower := 316538880, upper := 633077760, M := 3 } = true := by
  decide +kernel

theorem row070_layer017_checked :
    coverLayerCheck row070.height row070.goods { lower := 633077760, upper := 1266155520, M := 2 } = true := by
  decide +kernel

theorem row070_layer018_checked :
    coverLayerCheck row070.height row070.goods { lower := 1266155520, upper := 2532311040, M := 2 } = true := by
  decide +kernel

theorem row070_layer019_checked :
    coverLayerCheck row070.height row070.goods { lower := 2532311040, upper := 5064622080, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer019_checked
