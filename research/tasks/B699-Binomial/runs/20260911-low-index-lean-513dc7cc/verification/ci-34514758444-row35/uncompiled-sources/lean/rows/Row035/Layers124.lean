import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer124_checked :
    coverLayerCheck row035.height row035.goods { lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2 } = true := by
  decide +kernel

theorem row035_layer125_checked :
    coverLayerCheck row035.height row035.goods { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 } = true := by
  decide +kernel

theorem row035_layer126_checked :
    coverLayerCheck row035.height row035.goods { lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2 } = true := by
  decide +kernel

theorem row035_layer127_checked :
    coverLayerCheck row035.height row035.goods { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_checked
