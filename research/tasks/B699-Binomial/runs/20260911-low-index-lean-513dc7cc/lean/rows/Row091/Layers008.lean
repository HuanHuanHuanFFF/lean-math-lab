import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row091Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row091_layer008_checked :
    coverLayerCheck row091.height row091.goods { lower := 2096640, upper := 4193280, M := 7 } = true := by
  decide +kernel

theorem row091_layer009_checked :
    coverLayerCheck row091.height row091.goods { lower := 4193280, upper := 8386560, M := 6 } = true := by
  decide +kernel

theorem row091_layer010_checked :
    coverLayerCheck row091.height row091.goods { lower := 8386560, upper := 16773120, M := 5 } = true := by
  decide +kernel

theorem row091_layer011_checked :
    coverLayerCheck row091.height row091.goods { lower := 16773120, upper := 33546240, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row091_layer011_checked
