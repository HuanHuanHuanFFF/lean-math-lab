import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row109Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_registered :
    decide (row109.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row109_small_checked :
    coverCheck (2 * row109.height.i + 2) (row109.height.i * (row109.height.i - 1) - 1)
      (row109.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row109_layerCover_checked :
    coverCheck (row109.height.i * (row109.height.i - 1)) (row109.height.n0 - 1)
      (row109.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layerCover_checked
