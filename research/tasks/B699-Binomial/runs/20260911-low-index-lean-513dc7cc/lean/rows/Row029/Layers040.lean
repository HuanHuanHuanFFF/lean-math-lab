import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer040_checked :
    coverLayerCheck row029.height row029.goods { lower := 892803441754112, upper := 1785606883508224, M := 10 } = true := by
  decide +kernel

theorem row029_layer041_checked :
    coverLayerCheck row029.height row029.goods { lower := 1785606883508224, upper := 3571213767016448, M := 10 } = true := by
  decide +kernel

theorem row029_layer042_checked :
    coverLayerCheck row029.height row029.goods { lower := 3571213767016448, upper := 7142427534032896, M := 10 } = true := by
  decide +kernel

theorem row029_layer043_checked :
    coverLayerCheck row029.height row029.goods { lower := 7142427534032896, upper := 14284855068065792, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer043_checked
