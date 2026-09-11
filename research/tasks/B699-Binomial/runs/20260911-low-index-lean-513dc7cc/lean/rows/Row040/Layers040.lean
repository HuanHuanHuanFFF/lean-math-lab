import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer040_checked :
    coverLayerCheck row040.height row040.goods { lower := 1715238139330560, upper := 3430476278661120, M := 3 } = true := by
  decide +kernel

theorem row040_layer041_checked :
    coverLayerCheck row040.height row040.goods { lower := 3430476278661120, upper := 6860952557322240, M := 3 } = true := by
  decide +kernel

theorem row040_layer042_checked :
    coverLayerCheck row040.height row040.goods { lower := 6860952557322240, upper := 13721905114644480, M := 3 } = true := by
  decide +kernel

theorem row040_layer043_checked :
    coverLayerCheck row040.height row040.goods { lower := 13721905114644480, upper := 27443810229288960, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer043_checked
