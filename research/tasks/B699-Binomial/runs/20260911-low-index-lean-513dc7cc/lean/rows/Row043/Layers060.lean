import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer060_checked :
    coverLayerCheck row043.height row043.goods { lower := 2082176237319965638656, upper := 4164352474639931277312, M := 2 } = true := by
  decide +kernel

theorem row043_layer061_checked :
    coverLayerCheck row043.height row043.goods { lower := 4164352474639931277312, upper := 8328704949279862554624, M := 2 } = true := by
  decide +kernel

theorem row043_layer062_checked :
    coverLayerCheck row043.height row043.goods { lower := 8328704949279862554624, upper := 10000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer062_checked
