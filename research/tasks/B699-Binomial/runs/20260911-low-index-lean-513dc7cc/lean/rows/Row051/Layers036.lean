import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer036_checked :
    coverLayerCheck row051.height row051.goods { lower := 175234665676800, upper := 350469331353600, M := 2 } = true := by
  decide +kernel

theorem row051_layer037_checked :
    coverLayerCheck row051.height row051.goods { lower := 350469331353600, upper := 700938662707200, M := 2 } = true := by
  decide +kernel

theorem row051_layer038_checked :
    coverLayerCheck row051.height row051.goods { lower := 700938662707200, upper := 1401877325414400, M := 2 } = true := by
  decide +kernel

theorem row051_layer039_checked :
    coverLayerCheck row051.height row051.goods { lower := 1401877325414400, upper := 2803754650828800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer039_checked
