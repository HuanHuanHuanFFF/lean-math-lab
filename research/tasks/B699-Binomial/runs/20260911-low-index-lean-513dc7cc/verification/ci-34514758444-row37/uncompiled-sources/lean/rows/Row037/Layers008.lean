import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer008_checked :
    coverLayerCheck row037.height row037.goods { lower := 340992, upper := 681984, M := 17 } = true := by
  decide +kernel

theorem row037_layer009_checked :
    coverLayerCheck row037.height row037.goods { lower := 681984, upper := 1363968, M := 16 } = true := by
  decide +kernel

theorem row037_layer010_checked :
    coverLayerCheck row037.height row037.goods { lower := 1363968, upper := 2727936, M := 15 } = true := by
  decide +kernel

theorem row037_layer011_checked :
    coverLayerCheck row037.height row037.goods { lower := 2727936, upper := 5455872, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_checked
