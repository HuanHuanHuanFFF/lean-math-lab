import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer016_checked :
    coverLayerCheck row060.height row060.goods { lower := 231997440, upper := 463994880, M := 5 } = true := by
  decide +kernel

theorem row060_layer017_checked :
    coverLayerCheck row060.height row060.goods { lower := 463994880, upper := 927989760, M := 5 } = true := by
  decide +kernel

theorem row060_layer018_checked :
    coverLayerCheck row060.height row060.goods { lower := 927989760, upper := 1855979520, M := 4 } = true := by
  decide +kernel

theorem row060_layer019_checked :
    coverLayerCheck row060.height row060.goods { lower := 1855979520, upper := 3711959040, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer019_checked
