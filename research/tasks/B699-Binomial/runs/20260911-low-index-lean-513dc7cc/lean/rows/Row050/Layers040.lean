import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer040_checked :
    coverLayerCheck row050.height row050.goods { lower := 2693803488051200, upper := 5387606976102400, M := 3 } = true := by
  decide +kernel

theorem row050_layer041_checked :
    coverLayerCheck row050.height row050.goods { lower := 5387606976102400, upper := 10775213952204800, M := 3 } = true := by
  decide +kernel

theorem row050_layer042_checked :
    coverLayerCheck row050.height row050.goods { lower := 10775213952204800, upper := 21550427904409600, M := 3 } = true := by
  decide +kernel

theorem row050_layer043_checked :
    coverLayerCheck row050.height row050.goods { lower := 21550427904409600, upper := 43100855808819200, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer043_checked
