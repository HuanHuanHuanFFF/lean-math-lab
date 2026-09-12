import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row072Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row072_registered :
    decide (row072.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row072_small_checked :
    coverCheck (2 * row072.height.i + 2) (row072.height.i * (row072.height.i - 1) - 1)
      (row072.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row072_layerCover_checked :
    coverCheck (row072.height.i * (row072.height.i - 1)) (row072.height.n0 - 1)
      (row072.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row072_layerCover_checked
