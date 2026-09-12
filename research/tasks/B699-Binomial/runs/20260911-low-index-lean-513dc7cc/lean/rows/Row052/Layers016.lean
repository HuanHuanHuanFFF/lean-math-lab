import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer016_checked :
    coverLayerCheck row052.height row052.goods { lower := 173801472, upper := 347602944, M := 7 } = true := by
  decide +kernel

theorem row052_layer017_checked :
    coverLayerCheck row052.height row052.goods { lower := 347602944, upper := 695205888, M := 6 } = true := by
  decide +kernel

theorem row052_layer018_checked :
    coverLayerCheck row052.height row052.goods { lower := 695205888, upper := 1390411776, M := 6 } = true := by
  decide +kernel

theorem row052_layer019_checked :
    coverLayerCheck row052.height row052.goods { lower := 1390411776, upper := 2780823552, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer019_checked
