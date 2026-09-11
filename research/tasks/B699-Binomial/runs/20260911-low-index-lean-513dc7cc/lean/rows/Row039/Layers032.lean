import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row039Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer032_checked :
    coverLayerCheck row039.height row039.goods { lower := 6365141532672, upper := 12730283065344, M := 10 } = true := by
  decide +kernel

theorem row039_layer033_checked :
    coverLayerCheck row039.height row039.goods { lower := 12730283065344, upper := 25460566130688, M := 9 } = true := by
  decide +kernel

theorem row039_layer034_checked :
    coverLayerCheck row039.height row039.goods { lower := 25460566130688, upper := 50921132261376, M := 9 } = true := by
  decide +kernel

theorem row039_layer035_checked :
    coverLayerCheck row039.height row039.goods { lower := 50921132261376, upper := 101842264522752, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer035_checked
