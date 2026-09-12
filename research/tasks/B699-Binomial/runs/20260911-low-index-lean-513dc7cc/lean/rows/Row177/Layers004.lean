import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row177Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row177_layer004_checked :
    coverLayerCheck row177.height row177.goods { lower := 498432, upper := 996864, M := 4 } = true := by
  decide +kernel

theorem row177_layer005_checked :
    coverLayerCheck row177.height row177.goods { lower := 996864, upper := 1993728, M := 3 } = true := by
  decide +kernel

theorem row177_layer006_checked :
    coverLayerCheck row177.height row177.goods { lower := 1993728, upper := 3987456, M := 2 } = true := by
  decide +kernel

theorem row177_layer007_checked :
    coverLayerCheck row177.height row177.goods { lower := 3987456, upper := 7974912, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row177_layer007_checked
