import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row073Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer012_checked :
    coverLayerCheck row073.height row073.goods { lower := 21528576, upper := 43057152, M := 6 } = true := by
  decide +kernel

theorem row073_layer013_checked :
    coverLayerCheck row073.height row073.goods { lower := 43057152, upper := 86114304, M := 5 } = true := by
  decide +kernel

theorem row073_layer014_checked :
    coverLayerCheck row073.height row073.goods { lower := 86114304, upper := 172228608, M := 4 } = true := by
  decide +kernel

theorem row073_layer015_checked :
    coverLayerCheck row073.height row073.goods { lower := 172228608, upper := 344457216, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer015_checked
