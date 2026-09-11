import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row067Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer008_checked :
    coverLayerCheck row067.height row067.goods { lower := 1132032, upper := 2264064, M := 7 } = true := by
  decide +kernel

theorem row067_layer009_checked :
    coverLayerCheck row067.height row067.goods { lower := 2264064, upper := 4528128, M := 6 } = true := by
  decide +kernel

theorem row067_layer010_checked :
    coverLayerCheck row067.height row067.goods { lower := 4528128, upper := 9056256, M := 5 } = true := by
  decide +kernel

theorem row067_layer011_checked :
    coverLayerCheck row067.height row067.goods { lower := 9056256, upper := 18112512, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer011_checked
