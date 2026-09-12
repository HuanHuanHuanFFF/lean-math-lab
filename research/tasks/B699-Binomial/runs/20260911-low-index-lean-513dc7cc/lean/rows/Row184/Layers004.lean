import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row184Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_layer004_checked :
    coverLayerCheck row184.height row184.goods { lower := 538752, upper := 1077504, M := 4 } = true := by
  decide +kernel

theorem row184_layer005_checked :
    coverLayerCheck row184.height row184.goods { lower := 1077504, upper := 2155008, M := 3 } = true := by
  decide +kernel

theorem row184_layer006_checked :
    coverLayerCheck row184.height row184.goods { lower := 2155008, upper := 4310016, M := 3 } = true := by
  decide +kernel

theorem row184_layer007_checked :
    coverLayerCheck row184.height row184.goods { lower := 4310016, upper := 8620032, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layer007_checked
