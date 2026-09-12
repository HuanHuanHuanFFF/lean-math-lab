import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row058Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer004_checked :
    coverLayerCheck row058.height row058.goods { lower := 52896, upper := 105792, M := 15 } = true := by
  decide +kernel

theorem row058_layer005_checked :
    coverLayerCheck row058.height row058.goods { lower := 105792, upper := 211584, M := 13 } = true := by
  decide +kernel

theorem row058_layer006_checked :
    coverLayerCheck row058.height row058.goods { lower := 211584, upper := 423168, M := 12 } = true := by
  decide +kernel

theorem row058_layer007_checked :
    coverLayerCheck row058.height row058.goods { lower := 423168, upper := 846336, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer007_checked
