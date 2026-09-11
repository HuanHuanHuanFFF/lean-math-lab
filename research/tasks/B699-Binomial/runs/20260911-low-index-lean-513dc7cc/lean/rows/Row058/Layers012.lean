import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row058Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer012_checked :
    coverLayerCheck row058.height row058.goods { lower := 13541376, upper := 27082752, M := 5 } = true := by
  decide +kernel

theorem row058_layer013_checked :
    coverLayerCheck row058.height row058.goods { lower := 27082752, upper := 54165504, M := 5 } = true := by
  decide +kernel

theorem row058_layer014_checked :
    coverLayerCheck row058.height row058.goods { lower := 54165504, upper := 108331008, M := 4 } = true := by
  decide +kernel

theorem row058_layer015_checked :
    coverLayerCheck row058.height row058.goods { lower := 108331008, upper := 216662016, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer015_checked
