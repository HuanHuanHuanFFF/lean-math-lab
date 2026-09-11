import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row057Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_registered :
    decide (row057.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row057_small_checked :
    coverCheck (2 * row057.height.i + 2) (row057.height.i * (row057.height.i - 1) - 1)
      (row057.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row057_layerCover_checked :
    coverCheck (row057.height.i * (row057.height.i - 1)) (row057.height.n0 - 1)
      (row057.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layerCover_checked
