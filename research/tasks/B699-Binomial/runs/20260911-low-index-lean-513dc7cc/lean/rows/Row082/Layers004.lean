import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer004_checked :
    coverLayerCheck row082.height row082.goods { lower := 106272, upper := 212544, M := 14 } = true := by
  decide +kernel

theorem row082_layer005_checked :
    coverLayerCheck row082.height row082.goods { lower := 212544, upper := 425088, M := 12 } = true := by
  decide +kernel

theorem row082_layer006_checked :
    coverLayerCheck row082.height row082.goods { lower := 425088, upper := 850176, M := 11 } = true := by
  decide +kernel

theorem row082_layer007_checked :
    coverLayerCheck row082.height row082.goods { lower := 850176, upper := 1700352, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer007_checked
