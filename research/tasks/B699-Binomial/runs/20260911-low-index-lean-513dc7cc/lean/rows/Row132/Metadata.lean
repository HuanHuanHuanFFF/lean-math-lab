import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row132Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row132_registered :
    decide (row132.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row132_small_checked :
    coverCheck (2 * row132.height.i + 2) (row132.height.i * (row132.height.i - 1) - 1)
      (row132.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row132_layerCover_checked :
    coverCheck (row132.height.i * (row132.height.i - 1)) (row132.height.n0 - 1)
      (row132.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row132_layerCover_checked
