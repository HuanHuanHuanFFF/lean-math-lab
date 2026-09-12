import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer016_checked :
    coverLayerCheck row083.height row083.goods { lower := 446038016, upper := 892076032, M := 2 } = true := by
  decide +kernel

theorem row083_layer017_checked :
    coverLayerCheck row083.height row083.goods { lower := 892076032, upper := 1784152064, M := 2 } = true := by
  decide +kernel

theorem row083_layer018_checked :
    coverLayerCheck row083.height row083.goods { lower := 1784152064, upper := 3568304128, M := 2 } = true := by
  decide +kernel

theorem row083_layer019_checked :
    coverLayerCheck row083.height row083.goods { lower := 3568304128, upper := 7136608256, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer019_checked
