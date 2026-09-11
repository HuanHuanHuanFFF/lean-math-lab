import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_registered :
    decide (row060.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row060_small_checked :
    coverCheck (2 * row060.height.i + 2) (row060.height.i * (row060.height.i - 1) - 1)
      (row060.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row060_layerCover_checked :
    coverCheck (row060.height.i * (row060.height.i - 1)) (row060.height.n0 - 1)
      (row060.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layerCover_checked
