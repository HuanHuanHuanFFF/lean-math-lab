import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer060_checked :
    coverLayerCheck row042.height row042.goods { lower := 1985330830932990492672, upper := 3970661661865980985344, M := 4 } = true := by
  decide +kernel

theorem row042_layer061_checked :
    coverLayerCheck row042.height row042.goods { lower := 3970661661865980985344, upper := 7941323323731961970688, M := 4 } = true := by
  decide +kernel

theorem row042_layer062_checked :
    coverLayerCheck row042.height row042.goods { lower := 7941323323731961970688, upper := 15882646647463923941376, M := 4 } = true := by
  decide +kernel

theorem row042_layer063_checked :
    coverLayerCheck row042.height row042.goods { lower := 15882646647463923941376, upper := 31765293294927847882752, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer063_checked
