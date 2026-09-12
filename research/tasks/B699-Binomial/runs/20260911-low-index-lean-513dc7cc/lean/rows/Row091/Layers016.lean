import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row091Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer016_checked :
    coverLayerCheck row091.height row091.goods { lower := 536739840, upper := 1073479680, M := 2 } = true := by
  decide +kernel

theorem row091_layer017_checked :
    coverLayerCheck row091.height row091.goods { lower := 1073479680, upper := 2146959360, M := 2 } = true := by
  decide +kernel

theorem row091_layer018_checked :
    coverLayerCheck row091.height row091.goods { lower := 2146959360, upper := 4293918720, M := 2 } = true := by
  decide +kernel

theorem row091_layer019_checked :
    coverLayerCheck row091.height row091.goods { lower := 4293918720, upper := 8587837440, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer019_checked
