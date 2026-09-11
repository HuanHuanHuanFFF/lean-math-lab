import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_registered :
    decide (row082.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row082_small_checked :
    coverCheck (2 * row082.height.i + 2) (row082.height.i * (row082.height.i - 1) - 1)
      (row082.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row082_layerCover_checked :
    coverCheck (row082.height.i * (row082.height.i - 1)) (row082.height.n0 - 1)
      (row082.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layerCover_checked
