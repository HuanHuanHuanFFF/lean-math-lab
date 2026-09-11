import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row066Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row066_registered :
    decide (row066.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row066_small_checked :
    coverCheck (2 * row066.height.i + 2) (row066.height.i * (row066.height.i - 1) - 1)
      (row066.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row066_layerCover_checked :
    coverCheck (row066.height.i * (row066.height.i - 1)) (row066.height.n0 - 1)
      (row066.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row066_layerCover_checked
