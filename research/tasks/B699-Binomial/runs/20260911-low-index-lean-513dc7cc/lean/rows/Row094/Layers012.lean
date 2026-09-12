import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row094Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer012_checked :
    coverLayerCheck row094.height row094.goods { lower := 35807232, upper := 71614464, M := 2 } = true := by
  decide +kernel

theorem row094_layer013_checked :
    coverLayerCheck row094.height row094.goods { lower := 71614464, upper := 143228928, M := 2 } = true := by
  decide +kernel

theorem row094_layer014_checked :
    coverLayerCheck row094.height row094.goods { lower := 143228928, upper := 286457856, M := 2 } = true := by
  decide +kernel

theorem row094_layer015_checked :
    coverLayerCheck row094.height row094.goods { lower := 286457856, upper := 572915712, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer015_checked
