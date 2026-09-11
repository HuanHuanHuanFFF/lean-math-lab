import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer032_checked :
    coverLayerCheck row043.height row043.goods { lower := 7756710936576, upper := 15513421873152, M := 6 } = true := by
  decide +kernel

theorem row043_layer033_checked :
    coverLayerCheck row043.height row043.goods { lower := 15513421873152, upper := 31026843746304, M := 6 } = true := by
  decide +kernel

theorem row043_layer034_checked :
    coverLayerCheck row043.height row043.goods { lower := 31026843746304, upper := 62053687492608, M := 5 } = true := by
  decide +kernel

theorem row043_layer035_checked :
    coverLayerCheck row043.height row043.goods { lower := 62053687492608, upper := 124107374985216, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer035_checked
