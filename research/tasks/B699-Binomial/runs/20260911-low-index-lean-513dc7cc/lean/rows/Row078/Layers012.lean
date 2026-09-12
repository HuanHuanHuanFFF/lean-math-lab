import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer012_checked :
    coverLayerCheck row078.height row078.goods { lower := 24600576, upper := 49201152, M := 4 } = true := by
  decide +kernel

theorem row078_layer013_checked :
    coverLayerCheck row078.height row078.goods { lower := 49201152, upper := 98402304, M := 4 } = true := by
  decide +kernel

theorem row078_layer014_checked :
    coverLayerCheck row078.height row078.goods { lower := 98402304, upper := 196804608, M := 3 } = true := by
  decide +kernel

theorem row078_layer015_checked :
    coverLayerCheck row078.height row078.goods { lower := 196804608, upper := 393609216, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer015_checked
