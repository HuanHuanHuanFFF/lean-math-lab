import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer016_checked :
    coverLayerCheck row071.height row071.goods { lower := 325713920, upper := 651427840, M := 2 } = true := by
  decide +kernel

theorem row071_layer017_checked :
    coverLayerCheck row071.height row071.goods { lower := 651427840, upper := 1302855680, M := 2 } = true := by
  decide +kernel

theorem row071_layer018_checked :
    coverLayerCheck row071.height row071.goods { lower := 1302855680, upper := 2605711360, M := 2 } = true := by
  decide +kernel

theorem row071_layer019_checked :
    coverLayerCheck row071.height row071.goods { lower := 2605711360, upper := 5211422720, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer019_checked
