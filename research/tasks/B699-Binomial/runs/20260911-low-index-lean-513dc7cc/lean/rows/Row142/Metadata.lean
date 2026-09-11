import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row142Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_registered :
    decide (row142.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row142_small_checked :
    coverCheck (2 * row142.height.i + 2) (row142.height.i * (row142.height.i - 1) - 1)
      (row142.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row142_layerCover_checked :
    coverCheck (row142.height.i * (row142.height.i - 1)) (row142.height.n0 - 1)
      (row142.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layerCover_checked
