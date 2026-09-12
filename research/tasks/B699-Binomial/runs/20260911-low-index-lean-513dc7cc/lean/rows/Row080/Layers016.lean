import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer016_checked :
    coverLayerCheck row080.height row080.goods { lower := 414187520, upper := 828375040, M := 4 } = true := by
  decide +kernel

theorem row080_layer017_checked :
    coverLayerCheck row080.height row080.goods { lower := 828375040, upper := 1656750080, M := 3 } = true := by
  decide +kernel

theorem row080_layer018_checked :
    coverLayerCheck row080.height row080.goods { lower := 1656750080, upper := 3313500160, M := 3 } = true := by
  decide +kernel

theorem row080_layer019_checked :
    coverLayerCheck row080.height row080.goods { lower := 3313500160, upper := 6627000320, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer019_checked
