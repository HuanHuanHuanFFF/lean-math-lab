import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row070Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row070_layer012_checked :
    coverLayerCheck row070.height row070.goods { lower := 19783680, upper := 39567360, M := 5 } = true := by
  decide +kernel

theorem row070_layer013_checked :
    coverLayerCheck row070.height row070.goods { lower := 39567360, upper := 79134720, M := 4 } = true := by
  decide +kernel

theorem row070_layer014_checked :
    coverLayerCheck row070.height row070.goods { lower := 79134720, upper := 158269440, M := 4 } = true := by
  decide +kernel

theorem row070_layer015_checked :
    coverLayerCheck row070.height row070.goods { lower := 158269440, upper := 316538880, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row070_layer015_checked
