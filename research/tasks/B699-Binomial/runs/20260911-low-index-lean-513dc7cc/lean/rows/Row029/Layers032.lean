import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer032_checked :
    coverLayerCheck row029.height row029.goods { lower := 3487513444352, upper := 6975026888704, M := 13 } = true := by
  decide +kernel

theorem row029_layer033_checked :
    coverLayerCheck row029.height row029.goods { lower := 6975026888704, upper := 13950053777408, M := 12 } = true := by
  decide +kernel

theorem row029_layer034_checked :
    coverLayerCheck row029.height row029.goods { lower := 13950053777408, upper := 27900107554816, M := 12 } = true := by
  decide +kernel

theorem row029_layer035_checked :
    coverLayerCheck row029.height row029.goods { lower := 27900107554816, upper := 55800215109632, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer035_checked
