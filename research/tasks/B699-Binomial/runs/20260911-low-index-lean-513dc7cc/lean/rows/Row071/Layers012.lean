import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row071Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer012_checked :
    coverLayerCheck row071.height row071.goods { lower := 20357120, upper := 40714240, M := 4 } = true := by
  decide +kernel

theorem row071_layer013_checked :
    coverLayerCheck row071.height row071.goods { lower := 40714240, upper := 81428480, M := 3 } = true := by
  decide +kernel

theorem row071_layer014_checked :
    coverLayerCheck row071.height row071.goods { lower := 81428480, upper := 162856960, M := 3 } = true := by
  decide +kernel

theorem row071_layer015_checked :
    coverLayerCheck row071.height row071.goods { lower := 162856960, upper := 325713920, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer015_checked
