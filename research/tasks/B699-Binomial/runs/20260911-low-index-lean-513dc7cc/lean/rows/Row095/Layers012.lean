import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row095Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer012_checked :
    coverLayerCheck row095.height row095.goods { lower := 36577280, upper := 73154560, M := 2 } = true := by
  decide +kernel

theorem row095_layer013_checked :
    coverLayerCheck row095.height row095.goods { lower := 73154560, upper := 146309120, M := 2 } = true := by
  decide +kernel

theorem row095_layer014_checked :
    coverLayerCheck row095.height row095.goods { lower := 146309120, upper := 292618240, M := 1 } = true := by
  decide +kernel

theorem row095_layer015_checked :
    coverLayerCheck row095.height row095.goods { lower := 292618240, upper := 585236480, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer015_checked
