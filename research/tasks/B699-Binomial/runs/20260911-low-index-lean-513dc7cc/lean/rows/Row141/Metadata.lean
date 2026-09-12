import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row141Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_registered :
    decide (row141.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row141_small_checked :
    coverCheck (2 * row141.height.i + 2) (row141.height.i * (row141.height.i - 1) - 1)
      (row141.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row141_layerCover_checked :
    coverCheck (row141.height.i * (row141.height.i - 1)) (row141.height.n0 - 1)
      (row141.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layerCover_checked
