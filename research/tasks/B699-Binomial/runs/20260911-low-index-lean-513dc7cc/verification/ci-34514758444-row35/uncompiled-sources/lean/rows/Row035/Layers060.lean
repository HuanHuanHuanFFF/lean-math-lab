import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer060_checked :
    coverLayerCheck row035.height row035.goods { lower := 1371976590482147901440, upper := 2743953180964295802880, M := 9 } = true := by
  decide +kernel

theorem row035_layer061_checked :
    coverLayerCheck row035.height row035.goods { lower := 2743953180964295802880, upper := 5487906361928591605760, M := 9 } = true := by
  decide +kernel

theorem row035_layer062_checked :
    coverLayerCheck row035.height row035.goods { lower := 5487906361928591605760, upper := 10975812723857183211520, M := 9 } = true := by
  decide +kernel

theorem row035_layer063_checked :
    coverLayerCheck row035.height row035.goods { lower := 10975812723857183211520, upper := 21951625447714366423040, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer063_checked
