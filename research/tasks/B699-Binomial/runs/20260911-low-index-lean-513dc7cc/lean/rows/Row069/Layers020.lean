import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row069Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer020_checked :
    coverLayerCheck row069.height row069.goods { lower := 4919918592, upper := 9839837184, M := 2 } = true := by
  decide +kernel

theorem row069_layer021_checked :
    coverLayerCheck row069.height row069.goods { lower := 9839837184, upper := 19679674368, M := 2 } = true := by
  decide +kernel

theorem row069_layer022_checked :
    coverLayerCheck row069.height row069.goods { lower := 19679674368, upper := 39359348736, M := 2 } = true := by
  decide +kernel

theorem row069_layer023_checked :
    coverLayerCheck row069.height row069.goods { lower := 39359348736, upper := 78718697472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer023_checked
