import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer060_checked :
    coverLayerCheck row046.height row046.goods { lower := 2386547514536173240320, upper := 4773095029072346480640, M := 2 } = true := by
  decide +kernel

theorem row046_layer061_checked :
    coverLayerCheck row046.height row046.goods { lower := 4773095029072346480640, upper := 9546190058144692961280, M := 2 } = true := by
  decide +kernel

theorem row046_layer062_checked :
    coverLayerCheck row046.height row046.goods { lower := 9546190058144692961280, upper := 19092380116289385922560, M := 2 } = true := by
  decide +kernel

theorem row046_layer063_checked :
    coverLayerCheck row046.height row046.goods { lower := 19092380116289385922560, upper := 38184760232578771845120, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer063_checked
