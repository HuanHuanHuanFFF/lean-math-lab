import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer012_checked :
    coverLayerCheck row054.height row054.goods { lower := 11722752, upper := 23445504, M := 15 } = true := by
  decide +kernel

theorem row054_layer013_checked :
    coverLayerCheck row054.height row054.goods { lower := 23445504, upper := 46891008, M := 14 } = true := by
  decide +kernel

theorem row054_layer014_checked :
    coverLayerCheck row054.height row054.goods { lower := 46891008, upper := 93782016, M := 13 } = true := by
  decide +kernel

theorem row054_layer015_checked :
    coverLayerCheck row054.height row054.goods { lower := 93782016, upper := 187564032, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer015_checked
