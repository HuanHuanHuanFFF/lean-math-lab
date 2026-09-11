import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer016_checked :
    coverLayerCheck row043.height row043.goods { lower := 118358016, upper := 236716032, M := 14 } = true := by
  decide +kernel

theorem row043_layer017_checked :
    coverLayerCheck row043.height row043.goods { lower := 236716032, upper := 473432064, M := 13 } = true := by
  decide +kernel

theorem row043_layer018_checked :
    coverLayerCheck row043.height row043.goods { lower := 473432064, upper := 946864128, M := 13 } = true := by
  decide +kernel

theorem row043_layer019_checked :
    coverLayerCheck row043.height row043.goods { lower := 946864128, upper := 1893728256, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer019_checked
