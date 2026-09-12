import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer008_checked :
    coverLayerCheck row068.height row068.goods { lower := 1166336, upper := 2332672, M := 11 } = true := by
  decide +kernel

theorem row068_layer009_checked :
    coverLayerCheck row068.height row068.goods { lower := 2332672, upper := 4665344, M := 10 } = true := by
  decide +kernel

theorem row068_layer010_checked :
    coverLayerCheck row068.height row068.goods { lower := 4665344, upper := 9330688, M := 9 } = true := by
  decide +kernel

theorem row068_layer011_checked :
    coverLayerCheck row068.height row068.goods { lower := 9330688, upper := 18661376, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer011_checked
