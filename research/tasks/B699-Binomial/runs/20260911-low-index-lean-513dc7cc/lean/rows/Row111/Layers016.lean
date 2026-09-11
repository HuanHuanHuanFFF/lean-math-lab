import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_layer016_checked :
    coverLayerCheck row111.height row111.goods { lower := 800194560, upper := 1600389120, M := 2 } = true := by
  decide +kernel

theorem row111_layer017_checked :
    coverLayerCheck row111.height row111.goods { lower := 1600389120, upper := 3200778240, M := 2 } = true := by
  decide +kernel

theorem row111_layer018_checked :
    coverLayerCheck row111.height row111.goods { lower := 3200778240, upper := 6401556480, M := 1 } = true := by
  decide +kernel

theorem row111_layer019_checked :
    coverLayerCheck row111.height row111.goods { lower := 6401556480, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layer019_checked
