import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row169Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_registered :
    decide (row169.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row169_small_checked :
    coverCheck (2 * row169.height.i + 2) (row169.height.i * (row169.height.i - 1) - 1)
      (row169.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row169_layerCover_checked :
    coverCheck (row169.height.i * (row169.height.i - 1)) (row169.height.n0 - 1)
      (row169.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layerCover_checked
