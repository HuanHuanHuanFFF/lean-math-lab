import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row067Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer004_checked :
    coverLayerCheck row067.height row067.goods { lower := 70752, upper := 141504, M := 13 } = true := by
  decide +kernel

theorem row067_layer005_checked :
    coverLayerCheck row067.height row067.goods { lower := 141504, upper := 283008, M := 11 } = true := by
  decide +kernel

theorem row067_layer006_checked :
    coverLayerCheck row067.height row067.goods { lower := 283008, upper := 566016, M := 10 } = true := by
  decide +kernel

theorem row067_layer007_checked :
    coverLayerCheck row067.height row067.goods { lower := 566016, upper := 1132032, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer007_checked
