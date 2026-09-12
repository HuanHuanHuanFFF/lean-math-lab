import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row058Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer016_checked :
    coverLayerCheck row058.height row058.goods { lower := 216662016, upper := 433324032, M := 3 } = true := by
  decide +kernel

theorem row058_layer017_checked :
    coverLayerCheck row058.height row058.goods { lower := 433324032, upper := 866648064, M := 3 } = true := by
  decide +kernel

theorem row058_layer018_checked :
    coverLayerCheck row058.height row058.goods { lower := 866648064, upper := 1733296128, M := 3 } = true := by
  decide +kernel

theorem row058_layer019_checked :
    coverLayerCheck row058.height row058.goods { lower := 1733296128, upper := 3466592256, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer019_checked
