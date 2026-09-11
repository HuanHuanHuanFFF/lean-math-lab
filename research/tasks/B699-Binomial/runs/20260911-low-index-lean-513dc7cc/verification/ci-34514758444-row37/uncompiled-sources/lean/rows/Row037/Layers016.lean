import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer016_checked :
    coverLayerCheck row037.height row037.goods { lower := 87293952, upper := 174587904, M := 10 } = true := by
  decide +kernel

theorem row037_layer017_checked :
    coverLayerCheck row037.height row037.goods { lower := 174587904, upper := 349175808, M := 9 } = true := by
  decide +kernel

theorem row037_layer018_checked :
    coverLayerCheck row037.height row037.goods { lower := 349175808, upper := 698351616, M := 9 } = true := by
  decide +kernel

theorem row037_layer019_checked :
    coverLayerCheck row037.height row037.goods { lower := 698351616, upper := 1396703232, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_checked
