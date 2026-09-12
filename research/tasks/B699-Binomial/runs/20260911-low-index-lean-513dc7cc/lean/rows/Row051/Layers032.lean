import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer032_checked :
    coverLayerCheck row051.height row051.goods { lower := 10952166604800, upper := 21904333209600, M := 3 } = true := by
  decide +kernel

theorem row051_layer033_checked :
    coverLayerCheck row051.height row051.goods { lower := 21904333209600, upper := 43808666419200, M := 3 } = true := by
  decide +kernel

theorem row051_layer034_checked :
    coverLayerCheck row051.height row051.goods { lower := 43808666419200, upper := 87617332838400, M := 3 } = true := by
  decide +kernel

theorem row051_layer035_checked :
    coverLayerCheck row051.height row051.goods { lower := 87617332838400, upper := 175234665676800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer035_checked
