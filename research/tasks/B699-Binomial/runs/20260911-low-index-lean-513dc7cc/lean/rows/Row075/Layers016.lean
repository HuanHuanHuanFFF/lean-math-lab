import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer016_checked :
    coverLayerCheck row075.height row075.goods { lower := 363724800, upper := 727449600, M := 5 } = true := by
  decide +kernel

theorem row075_layer017_checked :
    coverLayerCheck row075.height row075.goods { lower := 727449600, upper := 1454899200, M := 4 } = true := by
  decide +kernel

theorem row075_layer018_checked :
    coverLayerCheck row075.height row075.goods { lower := 1454899200, upper := 2909798400, M := 4 } = true := by
  decide +kernel

theorem row075_layer019_checked :
    coverLayerCheck row075.height row075.goods { lower := 2909798400, upper := 5819596800, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer019_checked
