import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer052_checked :
    coverLayerCheck row040.height row040.goods { lower := 7025615418697973760, upper := 14051230837395947520, M := 2 } = true := by
  decide +kernel

theorem row040_layer053_checked :
    coverLayerCheck row040.height row040.goods { lower := 14051230837395947520, upper := 28102461674791895040, M := 2 } = true := by
  decide +kernel

theorem row040_layer054_checked :
    coverLayerCheck row040.height row040.goods { lower := 28102461674791895040, upper := 56204923349583790080, M := 2 } = true := by
  decide +kernel

theorem row040_layer055_checked :
    coverLayerCheck row040.height row040.goods { lower := 56204923349583790080, upper := 100000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer055_checked
