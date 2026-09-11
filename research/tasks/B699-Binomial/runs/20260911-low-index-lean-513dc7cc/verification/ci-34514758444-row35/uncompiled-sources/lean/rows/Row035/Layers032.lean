import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer032_checked :
    coverLayerCheck row035.height row035.goods { lower := 5111011082240, upper := 10222022164480, M := 18 } = true := by
  decide +kernel

theorem row035_layer033_checked :
    coverLayerCheck row035.height row035.goods { lower := 10222022164480, upper := 20444044328960, M := 18 } = true := by
  decide +kernel

theorem row035_layer034_checked :
    coverLayerCheck row035.height row035.goods { lower := 20444044328960, upper := 40888088657920, M := 17 } = true := by
  decide +kernel

theorem row035_layer035_checked :
    coverLayerCheck row035.height row035.goods { lower := 40888088657920, upper := 81776177315840, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer035_checked
