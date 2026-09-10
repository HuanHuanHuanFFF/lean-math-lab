import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer012_checked :
    coverLayerCheck row029.height row029.goods { lower := 3325952, upper := 6651904, M := 23 } = true := by
  decide +kernel

theorem row029_layer013_checked :
    coverLayerCheck row029.height row029.goods { lower := 6651904, upper := 13303808, M := 22 } = true := by
  decide +kernel

theorem row029_layer014_checked :
    coverLayerCheck row029.height row029.goods { lower := 13303808, upper := 26607616, M := 22 } = true := by
  decide +kernel

theorem row029_layer015_checked :
    coverLayerCheck row029.height row029.goods { lower := 26607616, upper := 53215232, M := 21 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer015_checked
