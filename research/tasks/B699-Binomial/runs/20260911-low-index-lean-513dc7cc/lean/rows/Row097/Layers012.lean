import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row097Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer012_checked :
    coverLayerCheck row097.height row097.goods { lower := 38141952, upper := 76283904, M := 2 } = true := by
  decide +kernel

theorem row097_layer013_checked :
    coverLayerCheck row097.height row097.goods { lower := 76283904, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer013_checked
