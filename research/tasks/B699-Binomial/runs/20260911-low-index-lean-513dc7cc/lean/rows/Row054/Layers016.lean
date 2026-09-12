import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer016_checked :
    coverLayerCheck row054.height row054.goods { lower := 187564032, upper := 375128064, M := 11 } = true := by
  decide +kernel

theorem row054_layer017_checked :
    coverLayerCheck row054.height row054.goods { lower := 375128064, upper := 750256128, M := 10 } = true := by
  decide +kernel

theorem row054_layer018_checked :
    coverLayerCheck row054.height row054.goods { lower := 750256128, upper := 1500512256, M := 9 } = true := by
  decide +kernel

theorem row054_layer019_checked :
    coverLayerCheck row054.height row054.goods { lower := 1500512256, upper := 3001024512, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer019_checked
