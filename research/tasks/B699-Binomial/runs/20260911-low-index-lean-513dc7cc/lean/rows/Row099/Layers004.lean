import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row099Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer004_checked :
    coverLayerCheck row099.height row099.goods { lower := 155232, upper := 310464, M := 9 } = true := by
  decide +kernel

theorem row099_layer005_checked :
    coverLayerCheck row099.height row099.goods { lower := 310464, upper := 620928, M := 7 } = true := by
  decide +kernel

theorem row099_layer006_checked :
    coverLayerCheck row099.height row099.goods { lower := 620928, upper := 1241856, M := 6 } = true := by
  decide +kernel

theorem row099_layer007_checked :
    coverLayerCheck row099.height row099.goods { lower := 1241856, upper := 2483712, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer007_checked
