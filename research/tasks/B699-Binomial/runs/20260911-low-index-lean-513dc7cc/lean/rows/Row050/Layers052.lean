import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer052_checked :
    coverLayerCheck row050.height row050.goods { lower := 11033819087057715200, upper := 22067638174115430400, M := 2 } = true := by
  decide +kernel

theorem row050_layer053_checked :
    coverLayerCheck row050.height row050.goods { lower := 22067638174115430400, upper := 44135276348230860800, M := 2 } = true := by
  decide +kernel

theorem row050_layer054_checked :
    coverLayerCheck row050.height row050.goods { lower := 44135276348230860800, upper := 88270552696461721600, M := 2 } = true := by
  decide +kernel

theorem row050_layer055_checked :
    coverLayerCheck row050.height row050.goods { lower := 88270552696461721600, upper := 100000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer055_checked
