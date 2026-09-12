import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer012_checked :
    coverLayerCheck row061.height row061.goods { lower := 14991360, upper := 29982720, M := 6 } = true := by
  decide +kernel

theorem row061_layer013_checked :
    coverLayerCheck row061.height row061.goods { lower := 29982720, upper := 59965440, M := 6 } = true := by
  decide +kernel

theorem row061_layer014_checked :
    coverLayerCheck row061.height row061.goods { lower := 59965440, upper := 119930880, M := 5 } = true := by
  decide +kernel

theorem row061_layer015_checked :
    coverLayerCheck row061.height row061.goods { lower := 119930880, upper := 239861760, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer015_checked
