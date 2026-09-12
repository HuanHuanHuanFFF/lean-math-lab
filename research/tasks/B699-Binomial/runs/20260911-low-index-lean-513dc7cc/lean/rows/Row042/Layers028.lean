import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer028_checked :
    coverLayerCheck row042.height row042.goods { lower := 462245855232, upper := 924491710464, M := 13 } = true := by
  decide +kernel

theorem row042_layer029_checked :
    coverLayerCheck row042.height row042.goods { lower := 924491710464, upper := 1848983420928, M := 13 } = true := by
  decide +kernel

theorem row042_layer030_checked :
    coverLayerCheck row042.height row042.goods { lower := 1848983420928, upper := 3697966841856, M := 12 } = true := by
  decide +kernel

theorem row042_layer031_checked :
    coverLayerCheck row042.height row042.goods { lower := 3697966841856, upper := 7395933683712, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer031_checked
