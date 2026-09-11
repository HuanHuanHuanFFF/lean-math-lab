import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer040_checked :
    coverLayerCheck row041.height row041.goods { lower := 1803199069552640, upper := 3606398139105280, M := 2 } = true := by
  decide +kernel

theorem row041_layer041_checked :
    coverLayerCheck row041.height row041.goods { lower := 3606398139105280, upper := 7212796278210560, M := 1 } = true := by
  decide +kernel

theorem row041_layer042_checked :
    coverLayerCheck row041.height row041.goods { lower := 7212796278210560, upper := 10000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer042_checked
