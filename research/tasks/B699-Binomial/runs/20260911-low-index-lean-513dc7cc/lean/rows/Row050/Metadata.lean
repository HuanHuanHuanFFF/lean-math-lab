import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row050Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_registered :
    decide (row050.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row050_small_checked :
    coverCheck (2 * row050.height.i + 2) (row050.height.i * (row050.height.i - 1) - 1)
      (row050.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row050_layerCover_checked :
    coverCheck (row050.height.i * (row050.height.i - 1)) (row050.height.n0 - 1)
      (row050.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layerCover_checked
