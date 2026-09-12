import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row063Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer032_checked :
    coverLayerCheck row063.height row063.goods { lower := 16776142258176, upper := 33552284516352, M := 2 } = true := by
  decide +kernel

theorem row063_layer033_checked :
    coverLayerCheck row063.height row063.goods { lower := 33552284516352, upper := 67104569032704, M := 1 } = true := by
  decide +kernel

theorem row063_layer034_checked :
    coverLayerCheck row063.height row063.goods { lower := 67104569032704, upper := 100000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer034_checked
