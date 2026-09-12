import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row147Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_registered :
    decide (row147.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row147_small_checked :
    coverCheck (2 * row147.height.i + 2) (row147.height.i * (row147.height.i - 1) - 1)
      (row147.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row147_layerCover_checked :
    coverCheck (row147.height.i * (row147.height.i - 1)) (row147.height.n0 - 1)
      (row147.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layerCover_checked
