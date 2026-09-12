import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row099Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row099_registered :
    decide (row099.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row099_small_checked :
    coverCheck (2 * row099.height.i + 2) (row099.height.i * (row099.height.i - 1) - 1)
      (row099.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row099_layerCover_checked :
    coverCheck (row099.height.i * (row099.height.i - 1)) (row099.height.n0 - 1)
      (row099.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row099_layerCover_checked
