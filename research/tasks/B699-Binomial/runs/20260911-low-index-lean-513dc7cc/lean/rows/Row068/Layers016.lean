import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer016_checked :
    coverLayerCheck row068.height row068.goods { lower := 298582016, upper := 597164032, M := 4 } = true := by
  decide +kernel

theorem row068_layer017_checked :
    coverLayerCheck row068.height row068.goods { lower := 597164032, upper := 1194328064, M := 4 } = true := by
  decide +kernel

theorem row068_layer018_checked :
    coverLayerCheck row068.height row068.goods { lower := 1194328064, upper := 2388656128, M := 4 } = true := by
  decide +kernel

theorem row068_layer019_checked :
    coverLayerCheck row068.height row068.goods { lower := 2388656128, upper := 4777312256, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer019_checked
