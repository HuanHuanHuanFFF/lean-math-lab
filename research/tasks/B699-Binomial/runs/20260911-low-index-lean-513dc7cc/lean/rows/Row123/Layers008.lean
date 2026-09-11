import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row123Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer008_checked :
    coverLayerCheck row123.height row123.goods { lower := 3841536, upper := 7683072, M := 3 } = true := by
  decide +kernel

theorem row123_layer009_checked :
    coverLayerCheck row123.height row123.goods { lower := 7683072, upper := 15366144, M := 2 } = true := by
  decide +kernel

theorem row123_layer010_checked :
    coverLayerCheck row123.height row123.goods { lower := 15366144, upper := 30732288, M := 2 } = true := by
  decide +kernel

theorem row123_layer011_checked :
    coverLayerCheck row123.height row123.goods { lower := 30732288, upper := 61464576, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer011_checked
