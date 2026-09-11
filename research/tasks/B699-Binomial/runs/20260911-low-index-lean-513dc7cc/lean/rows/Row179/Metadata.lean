import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row179Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row179_registered :
    decide (row179.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row179_small_checked :
    coverCheck (2 * row179.height.i + 2) (row179.height.i * (row179.height.i - 1) - 1)
      (row179.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row179_layerCover_checked :
    coverCheck (row179.height.i * (row179.height.i - 1)) (row179.height.n0 - 1)
      (row179.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row179_layerCover_checked
