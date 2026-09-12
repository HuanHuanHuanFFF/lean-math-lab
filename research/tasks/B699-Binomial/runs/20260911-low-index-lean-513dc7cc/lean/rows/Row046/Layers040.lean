import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row046Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer040_checked :
    coverLayerCheck row046.height row046.goods { lower := 2275989069496320, upper := 4551978138992640, M := 5 } = true := by
  decide +kernel

theorem row046_layer041_checked :
    coverLayerCheck row046.height row046.goods { lower := 4551978138992640, upper := 9103956277985280, M := 5 } = true := by
  decide +kernel

theorem row046_layer042_checked :
    coverLayerCheck row046.height row046.goods { lower := 9103956277985280, upper := 18207912555970560, M := 4 } = true := by
  decide +kernel

theorem row046_layer043_checked :
    coverLayerCheck row046.height row046.goods { lower := 18207912555970560, upper := 36415825111941120, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer043_checked
