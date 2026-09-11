import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row058Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer008_checked :
    coverLayerCheck row058.height row058.goods { lower := 846336, upper := 1692672, M := 9 } = true := by
  decide +kernel

theorem row058_layer009_checked :
    coverLayerCheck row058.height row058.goods { lower := 1692672, upper := 3385344, M := 8 } = true := by
  decide +kernel

theorem row058_layer010_checked :
    coverLayerCheck row058.height row058.goods { lower := 3385344, upper := 6770688, M := 7 } = true := by
  decide +kernel

theorem row058_layer011_checked :
    coverLayerCheck row058.height row058.goods { lower := 6770688, upper := 13541376, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer011_checked
