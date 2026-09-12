import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row078Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row078_layer016_checked :
    coverLayerCheck row078.height row078.goods { lower := 393609216, upper := 787218432, M := 3 } = true := by
  decide +kernel

theorem row078_layer017_checked :
    coverLayerCheck row078.height row078.goods { lower := 787218432, upper := 1574436864, M := 2 } = true := by
  decide +kernel

theorem row078_layer018_checked :
    coverLayerCheck row078.height row078.goods { lower := 1574436864, upper := 3148873728, M := 2 } = true := by
  decide +kernel

theorem row078_layer019_checked :
    coverLayerCheck row078.height row078.goods { lower := 3148873728, upper := 6297747456, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row078_layer019_checked
