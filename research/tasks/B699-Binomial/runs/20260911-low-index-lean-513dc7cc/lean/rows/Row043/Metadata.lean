import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_registered :
    decide (row043.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row043_small_checked :
    coverCheck (2 * row043.height.i + 2) (row043.height.i * (row043.height.i - 1) - 1)
      (row043.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row043_layerCover_checked :
    coverCheck (row043.height.i * (row043.height.i - 1)) (row043.height.n0 - 1)
      (row043.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layerCover_checked
