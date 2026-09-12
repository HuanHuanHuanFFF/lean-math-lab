import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer044_checked :
    coverLayerCheck row046.height row046.goods { lower := 36415825111941120, upper := 72831650223882240, M := 4 } = true := by
  decide +kernel

theorem row046_layer045_checked :
    coverLayerCheck row046.height row046.goods { lower := 72831650223882240, upper := 145663300447764480, M := 4 } = true := by
  decide +kernel

theorem row046_layer046_checked :
    coverLayerCheck row046.height row046.goods { lower := 145663300447764480, upper := 291326600895528960, M := 4 } = true := by
  decide +kernel

theorem row046_layer047_checked :
    coverLayerCheck row046.height row046.goods { lower := 291326600895528960, upper := 582653201791057920, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer047_checked
