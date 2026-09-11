import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row154Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row154_layer004_checked :
    coverLayerCheck row154.height row154.goods { lower := 376992, upper := 753984, M := 5 } = true := by
  decide +kernel

theorem row154_layer005_checked :
    coverLayerCheck row154.height row154.goods { lower := 753984, upper := 1507968, M := 4 } = true := by
  decide +kernel

theorem row154_layer006_checked :
    coverLayerCheck row154.height row154.goods { lower := 1507968, upper := 3015936, M := 3 } = true := by
  decide +kernel

theorem row154_layer007_checked :
    coverLayerCheck row154.height row154.goods { lower := 3015936, upper := 6031872, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row154_layer007_checked
