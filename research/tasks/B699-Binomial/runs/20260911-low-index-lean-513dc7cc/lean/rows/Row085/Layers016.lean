import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row085Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer016_checked :
    coverLayerCheck row085.height row085.goods { lower := 467927040, upper := 935854080, M := 3 } = true := by
  decide +kernel

theorem row085_layer017_checked :
    coverLayerCheck row085.height row085.goods { lower := 935854080, upper := 1871708160, M := 3 } = true := by
  decide +kernel

theorem row085_layer018_checked :
    coverLayerCheck row085.height row085.goods { lower := 1871708160, upper := 3743416320, M := 2 } = true := by
  decide +kernel

theorem row085_layer019_checked :
    coverLayerCheck row085.height row085.goods { lower := 3743416320, upper := 7486832640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer019_checked
