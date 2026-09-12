import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer020_checked :
    coverLayerCheck row053.height row053.goods { lower := 2889875456, upper := 5779750912, M := 3 } = true := by
  decide +kernel

theorem row053_layer021_checked :
    coverLayerCheck row053.height row053.goods { lower := 5779750912, upper := 11559501824, M := 3 } = true := by
  decide +kernel

theorem row053_layer022_checked :
    coverLayerCheck row053.height row053.goods { lower := 11559501824, upper := 23119003648, M := 3 } = true := by
  decide +kernel

theorem row053_layer023_checked :
    coverLayerCheck row053.height row053.goods { lower := 23119003648, upper := 46238007296, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer023_checked
