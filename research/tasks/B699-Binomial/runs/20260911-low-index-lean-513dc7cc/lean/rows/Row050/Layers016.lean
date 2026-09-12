import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer016_checked :
    coverLayerCheck row050.height row050.goods { lower := 160563200, upper := 321126400, M := 13 } = true := by
  decide +kernel

theorem row050_layer017_checked :
    coverLayerCheck row050.height row050.goods { lower := 321126400, upper := 642252800, M := 12 } = true := by
  decide +kernel

theorem row050_layer018_checked :
    coverLayerCheck row050.height row050.goods { lower := 642252800, upper := 1284505600, M := 12 } = true := by
  decide +kernel

theorem row050_layer019_checked :
    coverLayerCheck row050.height row050.goods { lower := 1284505600, upper := 2569011200, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer019_checked
