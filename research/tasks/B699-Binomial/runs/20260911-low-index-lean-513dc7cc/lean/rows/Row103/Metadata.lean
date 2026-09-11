import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row103Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_registered :
    decide (row103.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row103_small_checked :
    coverCheck (2 * row103.height.i + 2) (row103.height.i * (row103.height.i - 1) - 1)
      (row103.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row103_layerCover_checked :
    coverCheck (row103.height.i * (row103.height.i - 1)) (row103.height.n0 - 1)
      (row103.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layerCover_checked
