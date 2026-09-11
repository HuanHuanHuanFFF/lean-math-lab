import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer020_checked :
    coverLayerCheck row056.height row056.goods { lower := 3229614080, upper := 6459228160, M := 4 } = true := by
  decide +kernel

theorem row056_layer021_checked :
    coverLayerCheck row056.height row056.goods { lower := 6459228160, upper := 12918456320, M := 4 } = true := by
  decide +kernel

theorem row056_layer022_checked :
    coverLayerCheck row056.height row056.goods { lower := 12918456320, upper := 25836912640, M := 3 } = true := by
  decide +kernel

theorem row056_layer023_checked :
    coverLayerCheck row056.height row056.goods { lower := 25836912640, upper := 51673825280, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer023_checked
