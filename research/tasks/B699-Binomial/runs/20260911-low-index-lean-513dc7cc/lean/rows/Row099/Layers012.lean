import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row099Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_layer012_checked :
    coverLayerCheck row099.height row099.goods { lower := 39739392, upper := 79478784, M := 2 } = true := by
  decide +kernel

theorem row099_layer013_checked :
    coverLayerCheck row099.height row099.goods { lower := 79478784, upper := 158957568, M := 2 } = true := by
  decide +kernel

theorem row099_layer014_checked :
    coverLayerCheck row099.height row099.goods { lower := 158957568, upper := 317915136, M := 1 } = true := by
  decide +kernel

theorem row099_layer015_checked :
    coverLayerCheck row099.height row099.goods { lower := 317915136, upper := 635830272, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layer015_checked
