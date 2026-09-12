import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row059Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer012_checked :
    coverLayerCheck row059.height row059.goods { lower := 14016512, upper := 28033024, M := 4 } = true := by
  decide +kernel

theorem row059_layer013_checked :
    coverLayerCheck row059.height row059.goods { lower := 28033024, upper := 56066048, M := 4 } = true := by
  decide +kernel

theorem row059_layer014_checked :
    coverLayerCheck row059.height row059.goods { lower := 56066048, upper := 112132096, M := 3 } = true := by
  decide +kernel

theorem row059_layer015_checked :
    coverLayerCheck row059.height row059.goods { lower := 112132096, upper := 224264192, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer015_checked
