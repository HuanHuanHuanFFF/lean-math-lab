import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row073Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer016_checked :
    coverLayerCheck row073.height row073.goods { lower := 344457216, upper := 688914432, M := 3 } = true := by
  decide +kernel

theorem row073_layer017_checked :
    coverLayerCheck row073.height row073.goods { lower := 688914432, upper := 1377828864, M := 3 } = true := by
  decide +kernel

theorem row073_layer018_checked :
    coverLayerCheck row073.height row073.goods { lower := 1377828864, upper := 2755657728, M := 3 } = true := by
  decide +kernel

theorem row073_layer019_checked :
    coverLayerCheck row073.height row073.goods { lower := 2755657728, upper := 5511315456, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer019_checked
