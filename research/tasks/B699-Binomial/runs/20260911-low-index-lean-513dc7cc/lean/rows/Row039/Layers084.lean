import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer084_checked :
    coverLayerCheck row039.height row039.goods { lower := 28666049034702086990632845312, upper := 57332098069404173981265690624, M := 2 } = true := by
  decide +kernel

theorem row039_layer085_checked :
    coverLayerCheck row039.height row039.goods { lower := 57332098069404173981265690624, upper := 100000000000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer085_checked
