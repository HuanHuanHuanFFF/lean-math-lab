import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row109Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer008_checked :
    coverLayerCheck row109.height row109.goods { lower := 3013632, upper := 6027264, M := 5 } = true := by
  decide +kernel

theorem row109_layer009_checked :
    coverLayerCheck row109.height row109.goods { lower := 6027264, upper := 12054528, M := 4 } = true := by
  decide +kernel

theorem row109_layer010_checked :
    coverLayerCheck row109.height row109.goods { lower := 12054528, upper := 24109056, M := 4 } = true := by
  decide +kernel

theorem row109_layer011_checked :
    coverLayerCheck row109.height row109.goods { lower := 24109056, upper := 48218112, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer011_checked
