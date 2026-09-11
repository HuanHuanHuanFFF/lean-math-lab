import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row158Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer004_checked :
    coverLayerCheck row158.height row158.goods { lower := 396896, upper := 793792, M := 5 } = true := by
  decide +kernel

theorem row158_layer005_checked :
    coverLayerCheck row158.height row158.goods { lower := 793792, upper := 1587584, M := 4 } = true := by
  decide +kernel

theorem row158_layer006_checked :
    coverLayerCheck row158.height row158.goods { lower := 1587584, upper := 3175168, M := 3 } = true := by
  decide +kernel

theorem row158_layer007_checked :
    coverLayerCheck row158.height row158.goods { lower := 3175168, upper := 6350336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer007_checked
