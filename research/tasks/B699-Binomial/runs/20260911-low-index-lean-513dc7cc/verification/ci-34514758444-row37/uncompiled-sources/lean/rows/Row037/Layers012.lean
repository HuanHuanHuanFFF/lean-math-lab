import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer012_checked :
    coverLayerCheck row037.height row037.goods { lower := 5455872, upper := 10911744, M := 13 } = true := by
  decide +kernel

theorem row037_layer013_checked :
    coverLayerCheck row037.height row037.goods { lower := 10911744, upper := 21823488, M := 12 } = true := by
  decide +kernel

theorem row037_layer014_checked :
    coverLayerCheck row037.height row037.goods { lower := 21823488, upper := 43646976, M := 12 } = true := by
  decide +kernel

theorem row037_layer015_checked :
    coverLayerCheck row037.height row037.goods { lower := 43646976, upper := 87293952, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_checked
