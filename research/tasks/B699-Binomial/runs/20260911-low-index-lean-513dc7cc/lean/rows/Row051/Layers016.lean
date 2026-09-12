import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer016_checked :
    coverLayerCheck row051.height row051.goods { lower := 167116800, upper := 334233600, M := 9 } = true := by
  decide +kernel

theorem row051_layer017_checked :
    coverLayerCheck row051.height row051.goods { lower := 334233600, upper := 668467200, M := 9 } = true := by
  decide +kernel

theorem row051_layer018_checked :
    coverLayerCheck row051.height row051.goods { lower := 668467200, upper := 1336934400, M := 8 } = true := by
  decide +kernel

theorem row051_layer019_checked :
    coverLayerCheck row051.height row051.goods { lower := 1336934400, upper := 2673868800, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer019_checked
