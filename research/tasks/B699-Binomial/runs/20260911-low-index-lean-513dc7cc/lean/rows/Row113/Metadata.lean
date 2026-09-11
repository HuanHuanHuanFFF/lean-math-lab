import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row113Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_registered :
    decide (row113.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row113_small_checked :
    coverCheck (2 * row113.height.i + 2) (row113.height.i * (row113.height.i - 1) - 1)
      (row113.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row113_layerCover_checked :
    coverCheck (row113.height.i * (row113.height.i - 1)) (row113.height.n0 - 1)
      (row113.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layerCover_checked
