import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer016_checked :
    coverLayerCheck row056.height row056.goods { lower := 201850880, upper := 403701760, M := 6 } = true := by
  decide +kernel

theorem row056_layer017_checked :
    coverLayerCheck row056.height row056.goods { lower := 403701760, upper := 807403520, M := 5 } = true := by
  decide +kernel

theorem row056_layer018_checked :
    coverLayerCheck row056.height row056.goods { lower := 807403520, upper := 1614807040, M := 5 } = true := by
  decide +kernel

theorem row056_layer019_checked :
    coverLayerCheck row056.height row056.goods { lower := 1614807040, upper := 3229614080, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer019_checked
