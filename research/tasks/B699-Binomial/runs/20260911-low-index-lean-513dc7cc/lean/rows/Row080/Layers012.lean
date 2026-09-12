import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer012_checked :
    coverLayerCheck row080.height row080.goods { lower := 25886720, upper := 51773440, M := 6 } = true := by
  decide +kernel

theorem row080_layer013_checked :
    coverLayerCheck row080.height row080.goods { lower := 51773440, upper := 103546880, M := 5 } = true := by
  decide +kernel

theorem row080_layer014_checked :
    coverLayerCheck row080.height row080.goods { lower := 103546880, upper := 207093760, M := 5 } = true := by
  decide +kernel

theorem row080_layer015_checked :
    coverLayerCheck row080.height row080.goods { lower := 207093760, upper := 414187520, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer015_checked
