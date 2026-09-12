import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row052Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_registered :
    decide (row052.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row052_small_checked :
    coverCheck (2 * row052.height.i + 2) (row052.height.i * (row052.height.i - 1) - 1)
      (row052.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row052_layerCover_checked :
    coverCheck (row052.height.i * (row052.height.i - 1)) (row052.height.n0 - 1)
      (row052.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layerCover_checked
