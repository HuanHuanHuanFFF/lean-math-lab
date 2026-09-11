import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row157Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row157_registered :
    decide (row157.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row157_small_checked :
    coverCheck (2 * row157.height.i + 2) (row157.height.i * (row157.height.i - 1) - 1)
      (row157.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row157_layerCover_checked :
    coverCheck (row157.height.i * (row157.height.i - 1)) (row157.height.n0 - 1)
      (row157.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row157_layerCover_checked
