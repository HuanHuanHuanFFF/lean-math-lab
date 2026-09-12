import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_registered :
    decide (row061.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row061_small_checked :
    coverCheck (2 * row061.height.i + 2) (row061.height.i * (row061.height.i - 1) - 1)
      (row061.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row061_layerCover_checked :
    coverCheck (row061.height.i * (row061.height.i - 1)) (row061.height.n0 - 1)
      (row061.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layerCover_checked
