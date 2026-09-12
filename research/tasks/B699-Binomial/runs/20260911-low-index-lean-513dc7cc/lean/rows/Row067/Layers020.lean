import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row067Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer020_checked :
    coverLayerCheck row067.height row067.goods { lower := 4636803072, upper := 9273606144, M := 1 } = true := by
  decide +kernel

theorem row067_layer021_checked :
    coverLayerCheck row067.height row067.goods { lower := 9273606144, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer021_checked
