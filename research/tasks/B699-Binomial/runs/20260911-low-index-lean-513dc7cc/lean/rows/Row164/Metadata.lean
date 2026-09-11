import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row164Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row164_registered :
    decide (row164.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row164_small_checked :
    coverCheck (2 * row164.height.i + 2) (row164.height.i * (row164.height.i - 1) - 1)
      (row164.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row164_layerCover_checked :
    coverCheck (row164.height.i * (row164.height.i - 1)) (row164.height.n0 - 1)
      (row164.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row164_layerCover_checked
