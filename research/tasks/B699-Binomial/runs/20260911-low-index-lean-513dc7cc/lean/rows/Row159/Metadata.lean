import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row159Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row159_registered :
    decide (row159.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row159_small_checked :
    coverCheck (2 * row159.height.i + 2) (row159.height.i * (row159.height.i - 1) - 1)
      (row159.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row159_layerCover_checked :
    coverCheck (row159.height.i * (row159.height.i - 1)) (row159.height.n0 - 1)
      (row159.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row159_layerCover_checked
