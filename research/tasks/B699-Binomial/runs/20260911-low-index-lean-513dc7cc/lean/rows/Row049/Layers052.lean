import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer052_checked :
    coverLayerCheck row049.height row049.goods { lower := 10592466323575406592, upper := 21184932647150813184, M := 4 } = true := by
  decide +kernel

theorem row049_layer053_checked :
    coverLayerCheck row049.height row049.goods { lower := 21184932647150813184, upper := 42369865294301626368, M := 3 } = true := by
  decide +kernel

theorem row049_layer054_checked :
    coverLayerCheck row049.height row049.goods { lower := 42369865294301626368, upper := 84739730588603252736, M := 3 } = true := by
  decide +kernel

theorem row049_layer055_checked :
    coverLayerCheck row049.height row049.goods { lower := 84739730588603252736, upper := 169479461177206505472, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer055_checked
