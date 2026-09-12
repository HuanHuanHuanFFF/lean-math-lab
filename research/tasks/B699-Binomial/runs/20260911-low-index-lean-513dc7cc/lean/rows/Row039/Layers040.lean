import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer040_checked :
    coverLayerCheck row039.height row039.goods { lower := 1629476232364032, upper := 3258952464728064, M := 7 } = true := by
  decide +kernel

theorem row039_layer041_checked :
    coverLayerCheck row039.height row039.goods { lower := 3258952464728064, upper := 6517904929456128, M := 7 } = true := by
  decide +kernel

theorem row039_layer042_checked :
    coverLayerCheck row039.height row039.goods { lower := 6517904929456128, upper := 13035809858912256, M := 6 } = true := by
  decide +kernel

theorem row039_layer043_checked :
    coverLayerCheck row039.height row039.goods { lower := 13035809858912256, upper := 26071619717824512, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer043_checked
