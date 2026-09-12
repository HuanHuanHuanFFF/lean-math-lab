import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer048_checked :
    coverLayerCheck row040.height row040.goods { lower := 439100963668623360, upper := 878201927337246720, M := 2 } = true := by
  decide +kernel

theorem row040_layer049_checked :
    coverLayerCheck row040.height row040.goods { lower := 878201927337246720, upper := 1756403854674493440, M := 2 } = true := by
  decide +kernel

theorem row040_layer050_checked :
    coverLayerCheck row040.height row040.goods { lower := 1756403854674493440, upper := 3512807709348986880, M := 2 } = true := by
  decide +kernel

theorem row040_layer051_checked :
    coverLayerCheck row040.height row040.goods { lower := 3512807709348986880, upper := 7025615418697973760, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer051_checked
