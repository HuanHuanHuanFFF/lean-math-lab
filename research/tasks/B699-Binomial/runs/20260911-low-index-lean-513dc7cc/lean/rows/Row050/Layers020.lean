import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer020_checked :
    coverLayerCheck row050.height row050.goods { lower := 2569011200, upper := 5138022400, M := 10 } = true := by
  decide +kernel

theorem row050_layer021_checked :
    coverLayerCheck row050.height row050.goods { lower := 5138022400, upper := 10276044800, M := 10 } = true := by
  decide +kernel

theorem row050_layer022_checked :
    coverLayerCheck row050.height row050.goods { lower := 10276044800, upper := 20552089600, M := 9 } = true := by
  decide +kernel

theorem row050_layer023_checked :
    coverLayerCheck row050.height row050.goods { lower := 20552089600, upper := 41104179200, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer023_checked
