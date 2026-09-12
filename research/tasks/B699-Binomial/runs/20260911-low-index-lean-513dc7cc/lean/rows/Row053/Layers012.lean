import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer012_checked :
    coverLayerCheck row053.height row053.goods { lower := 11288576, upper := 22577152, M := 8 } = true := by
  decide +kernel

theorem row053_layer013_checked :
    coverLayerCheck row053.height row053.goods { lower := 22577152, upper := 45154304, M := 7 } = true := by
  decide +kernel

theorem row053_layer014_checked :
    coverLayerCheck row053.height row053.goods { lower := 45154304, upper := 90308608, M := 6 } = true := by
  decide +kernel

theorem row053_layer015_checked :
    coverLayerCheck row053.height row053.goods { lower := 90308608, upper := 180617216, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer015_checked
