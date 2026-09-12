import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer028_checked :
    coverLayerCheck row050.height row050.goods { lower := 657666867200, upper := 1315333734400, M := 6 } = true := by
  decide +kernel

theorem row050_layer029_checked :
    coverLayerCheck row050.height row050.goods { lower := 1315333734400, upper := 2630667468800, M := 6 } = true := by
  decide +kernel

theorem row050_layer030_checked :
    coverLayerCheck row050.height row050.goods { lower := 2630667468800, upper := 5261334937600, M := 6 } = true := by
  decide +kernel

theorem row050_layer031_checked :
    coverLayerCheck row050.height row050.goods { lower := 5261334937600, upper := 10522669875200, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer031_checked
