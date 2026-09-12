import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer040_checked :
    coverLayerCheck row047.height row047.goods { lower := 2377144139251712, upper := 4754288278503424, M := 2 } = true := by
  decide +kernel

theorem row047_layer041_checked :
    coverLayerCheck row047.height row047.goods { lower := 4754288278503424, upper := 9508576557006848, M := 2 } = true := by
  decide +kernel

theorem row047_layer042_checked :
    coverLayerCheck row047.height row047.goods { lower := 9508576557006848, upper := 19017153114013696, M := 2 } = true := by
  decide +kernel

theorem row047_layer043_checked :
    coverLayerCheck row047.height row047.goods { lower := 19017153114013696, upper := 38034306228027392, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer043_checked
