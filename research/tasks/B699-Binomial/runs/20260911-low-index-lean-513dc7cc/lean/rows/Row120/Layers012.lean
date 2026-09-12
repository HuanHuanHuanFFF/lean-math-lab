import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row120Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer012_checked :
    coverLayerCheck row120.height row120.goods { lower := 58490880, upper := 116981760, M := 2 } = true := by
  decide +kernel

theorem row120_layer013_checked :
    coverLayerCheck row120.height row120.goods { lower := 116981760, upper := 233963520, M := 2 } = true := by
  decide +kernel

theorem row120_layer014_checked :
    coverLayerCheck row120.height row120.goods { lower := 233963520, upper := 467927040, M := 1 } = true := by
  decide +kernel

theorem row120_layer015_checked :
    coverLayerCheck row120.height row120.goods { lower := 467927040, upper := 935854080, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer015_checked
