import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row167Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_registered :
    decide (row167.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row167_small_checked :
    coverCheck (2 * row167.height.i + 2) (row167.height.i * (row167.height.i - 1) - 1)
      (row167.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row167_layerCover_checked :
    coverCheck (row167.height.i * (row167.height.i - 1)) (row167.height.n0 - 1)
      (row167.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layerCover_checked
