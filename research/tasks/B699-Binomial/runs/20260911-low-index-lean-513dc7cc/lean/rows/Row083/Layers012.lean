import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row083Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer012_checked :
    coverLayerCheck row083.height row083.goods { lower := 27877376, upper := 55754752, M := 4 } = true := by
  decide +kernel

theorem row083_layer013_checked :
    coverLayerCheck row083.height row083.goods { lower := 55754752, upper := 111509504, M := 3 } = true := by
  decide +kernel

theorem row083_layer014_checked :
    coverLayerCheck row083.height row083.goods { lower := 111509504, upper := 223019008, M := 3 } = true := by
  decide +kernel

theorem row083_layer015_checked :
    coverLayerCheck row083.height row083.goods { lower := 223019008, upper := 446038016, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer015_checked
