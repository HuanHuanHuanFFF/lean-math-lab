import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row128Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_registered :
    decide (row128.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row128_small_checked :
    coverCheck (2 * row128.height.i + 2) (row128.height.i * (row128.height.i - 1) - 1)
      (row128.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row128_layerCover_checked :
    coverCheck (row128.height.i * (row128.height.i - 1)) (row128.height.n0 - 1)
      (row128.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layerCover_checked
