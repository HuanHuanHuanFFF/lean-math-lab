import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row125Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_registered :
    decide (row125.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row125_small_checked :
    coverCheck (2 * row125.height.i + 2) (row125.height.i * (row125.height.i - 1) - 1)
      (row125.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row125_layerCover_checked :
    coverCheck (row125.height.i * (row125.height.i - 1)) (row125.height.n0 - 1)
      (row125.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layerCover_checked
