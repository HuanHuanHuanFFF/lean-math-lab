import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer000_checked :
    coverLayerCheck row036.height row036.goods { lower := 1260, upper := 2520, M := 34 } = true := by
  decide +kernel

theorem row036_layer001_checked :
    coverLayerCheck row036.height row036.goods { lower := 2520, upper := 5040, M := 32 } = true := by
  decide +kernel

theorem row036_layer002_checked :
    coverLayerCheck row036.height row036.goods { lower := 5040, upper := 10080, M := 31 } = true := by
  decide +kernel

theorem row036_layer003_checked :
    coverLayerCheck row036.height row036.goods { lower := 10080, upper := 20160, M := 29 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer003_checked
