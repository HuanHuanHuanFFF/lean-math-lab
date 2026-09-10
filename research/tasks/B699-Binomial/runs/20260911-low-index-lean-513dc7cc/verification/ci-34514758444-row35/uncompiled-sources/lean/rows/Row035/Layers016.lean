import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_checked :
    coverLayerCheck row035.height row035.goods { lower := 77987840, upper := 155975680, M := 26 } = true := by
  decide +kernel

theorem row035_layer017_checked :
    coverLayerCheck row035.height row035.goods { lower := 155975680, upper := 311951360, M := 25 } = true := by
  decide +kernel

theorem row035_layer018_checked :
    coverLayerCheck row035.height row035.goods { lower := 311951360, upper := 623902720, M := 25 } = true := by
  decide +kernel

theorem row035_layer019_checked :
    coverLayerCheck row035.height row035.goods { lower := 623902720, upper := 1247805440, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_checked
