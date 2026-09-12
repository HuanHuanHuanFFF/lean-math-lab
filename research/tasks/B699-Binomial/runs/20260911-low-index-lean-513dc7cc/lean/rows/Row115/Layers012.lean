import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row115Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer012_checked :
    coverLayerCheck row115.height row115.goods { lower := 53698560, upper := 107397120, M := 3 } = true := by
  decide +kernel

theorem row115_layer013_checked :
    coverLayerCheck row115.height row115.goods { lower := 107397120, upper := 214794240, M := 3 } = true := by
  decide +kernel

theorem row115_layer014_checked :
    coverLayerCheck row115.height row115.goods { lower := 214794240, upper := 429588480, M := 2 } = true := by
  decide +kernel

theorem row115_layer015_checked :
    coverLayerCheck row115.height row115.goods { lower := 429588480, upper := 859176960, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer015_checked
