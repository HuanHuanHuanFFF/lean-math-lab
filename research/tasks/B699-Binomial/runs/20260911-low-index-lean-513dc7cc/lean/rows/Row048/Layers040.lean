import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer040_checked :
    coverLayerCheck row048.height row048.goods { lower := 2480498232262656, upper := 4960996464525312, M := 12 } = true := by
  decide +kernel

theorem row048_layer041_checked :
    coverLayerCheck row048.height row048.goods { lower := 4960996464525312, upper := 9921992929050624, M := 12 } = true := by
  decide +kernel

theorem row048_layer042_checked :
    coverLayerCheck row048.height row048.goods { lower := 9921992929050624, upper := 19843985858101248, M := 11 } = true := by
  decide +kernel

theorem row048_layer043_checked :
    coverLayerCheck row048.height row048.goods { lower := 19843985858101248, upper := 39687971716202496, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer043_checked
