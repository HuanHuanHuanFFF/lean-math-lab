import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer016_checked :
    coverLayerCheck row029.height row029.goods { lower := 53215232, upper := 106430464, M := 20 } = true := by
  decide +kernel

theorem row029_layer017_checked :
    coverLayerCheck row029.height row029.goods { lower := 106430464, upper := 212860928, M := 20 } = true := by
  decide +kernel

theorem row029_layer018_checked :
    coverLayerCheck row029.height row029.goods { lower := 212860928, upper := 425721856, M := 19 } = true := by
  decide +kernel

theorem row029_layer019_checked :
    coverLayerCheck row029.height row029.goods { lower := 425721856, upper := 851443712, M := 19 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer019_checked
