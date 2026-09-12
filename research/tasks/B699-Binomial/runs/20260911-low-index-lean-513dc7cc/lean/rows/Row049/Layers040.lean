import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer040_checked :
    coverLayerCheck row049.height row049.goods { lower := 2586051348529152, upper := 5172102697058304, M := 6 } = true := by
  decide +kernel

theorem row049_layer041_checked :
    coverLayerCheck row049.height row049.goods { lower := 5172102697058304, upper := 10344205394116608, M := 6 } = true := by
  decide +kernel

theorem row049_layer042_checked :
    coverLayerCheck row049.height row049.goods { lower := 10344205394116608, upper := 20688410788233216, M := 5 } = true := by
  decide +kernel

theorem row049_layer043_checked :
    coverLayerCheck row049.height row049.goods { lower := 20688410788233216, upper := 41376821576466432, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer043_checked
