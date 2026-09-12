import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row077Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer012_checked :
    coverLayerCheck row077.height row077.goods { lower := 23969792, upper := 47939584, M := 5 } = true := by
  decide +kernel

theorem row077_layer013_checked :
    coverLayerCheck row077.height row077.goods { lower := 47939584, upper := 95879168, M := 5 } = true := by
  decide +kernel

theorem row077_layer014_checked :
    coverLayerCheck row077.height row077.goods { lower := 95879168, upper := 191758336, M := 4 } = true := by
  decide +kernel

theorem row077_layer015_checked :
    coverLayerCheck row077.height row077.goods { lower := 191758336, upper := 383516672, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer015_checked
