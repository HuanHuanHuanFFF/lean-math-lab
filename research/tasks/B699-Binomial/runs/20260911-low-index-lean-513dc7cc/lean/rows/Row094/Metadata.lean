import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row094Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_registered :
    decide (row094.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row094_small_checked :
    coverCheck (2 * row094.height.i + 2) (row094.height.i * (row094.height.i - 1) - 1)
      (row094.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row094_layerCover_checked :
    coverCheck (row094.height.i * (row094.height.i - 1)) (row094.height.n0 - 1)
      (row094.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layerCover_checked
