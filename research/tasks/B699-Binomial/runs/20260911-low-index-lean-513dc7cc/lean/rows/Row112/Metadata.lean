import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row112Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row112_registered :
    decide (row112.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row112_small_checked :
    coverCheck (2 * row112.height.i + 2) (row112.height.i * (row112.height.i - 1) - 1)
      (row112.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row112_layerCover_checked :
    coverCheck (row112.height.i * (row112.height.i - 1)) (row112.height.n0 - 1)
      (row112.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row112_layerCover_checked
