import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row114Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer012_checked :
    coverLayerCheck row114.height row114.goods { lower := 52764672, upper := 105529344, M := 4 } = true := by
  decide +kernel

theorem row114_layer013_checked :
    coverLayerCheck row114.height row114.goods { lower := 105529344, upper := 211058688, M := 3 } = true := by
  decide +kernel

theorem row114_layer014_checked :
    coverLayerCheck row114.height row114.goods { lower := 211058688, upper := 422117376, M := 3 } = true := by
  decide +kernel

theorem row114_layer015_checked :
    coverLayerCheck row114.height row114.goods { lower := 422117376, upper := 844234752, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer015_checked
