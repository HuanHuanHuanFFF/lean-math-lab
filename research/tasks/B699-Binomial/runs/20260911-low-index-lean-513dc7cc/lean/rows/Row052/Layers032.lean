import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer032_checked :
    coverLayerCheck row052.height row052.goods { lower := 11390253268992, upper := 22780506537984, M := 2 } = true := by
  decide +kernel

theorem row052_layer033_checked :
    coverLayerCheck row052.height row052.goods { lower := 22780506537984, upper := 45561013075968, M := 2 } = true := by
  decide +kernel

theorem row052_layer034_checked :
    coverLayerCheck row052.height row052.goods { lower := 45561013075968, upper := 91122026151936, M := 2 } = true := by
  decide +kernel

theorem row052_layer035_checked :
    coverLayerCheck row052.height row052.goods { lower := 91122026151936, upper := 100000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer035_checked
