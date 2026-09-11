import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer020_checked :
    coverLayerCheck row040.height row040.goods { lower := 1635778560, upper := 3271557120, M := 10 } = true := by
  decide +kernel

theorem row040_layer021_checked :
    coverLayerCheck row040.height row040.goods { lower := 3271557120, upper := 6543114240, M := 9 } = true := by
  decide +kernel

theorem row040_layer022_checked :
    coverLayerCheck row040.height row040.goods { lower := 6543114240, upper := 13086228480, M := 8 } = true := by
  decide +kernel

theorem row040_layer023_checked :
    coverLayerCheck row040.height row040.goods { lower := 13086228480, upper := 26172456960, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer023_checked
