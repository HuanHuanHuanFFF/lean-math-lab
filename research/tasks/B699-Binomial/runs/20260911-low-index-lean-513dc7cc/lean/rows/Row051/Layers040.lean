import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer040_checked :
    coverLayerCheck row051.height row051.goods { lower := 2803754650828800, upper := 5607509301657600, M := 2 } = true := by
  decide +kernel

theorem row051_layer041_checked :
    coverLayerCheck row051.height row051.goods { lower := 5607509301657600, upper := 11215018603315200, M := 2 } = true := by
  decide +kernel

theorem row051_layer042_checked :
    coverLayerCheck row051.height row051.goods { lower := 11215018603315200, upper := 22430037206630400, M := 2 } = true := by
  decide +kernel

theorem row051_layer043_checked :
    coverLayerCheck row051.height row051.goods { lower := 22430037206630400, upper := 44860074413260800, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer043_checked
