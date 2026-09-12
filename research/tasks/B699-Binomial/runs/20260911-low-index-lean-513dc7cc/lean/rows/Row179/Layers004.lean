import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row179Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_layer004_checked :
    coverLayerCheck row179.height row179.goods { lower := 509792, upper := 1019584, M := 3 } = true := by
  decide +kernel

theorem row179_layer005_checked :
    coverLayerCheck row179.height row179.goods { lower := 1019584, upper := 2039168, M := 3 } = true := by
  decide +kernel

theorem row179_layer006_checked :
    coverLayerCheck row179.height row179.goods { lower := 2039168, upper := 4078336, M := 2 } = true := by
  decide +kernel

theorem row179_layer007_checked :
    coverLayerCheck row179.height row179.goods { lower := 4078336, upper := 8156672, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layer007_checked
