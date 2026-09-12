import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row145Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_registered :
    decide (row145.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row145_small_checked :
    coverCheck (2 * row145.height.i + 2) (row145.height.i * (row145.height.i - 1) - 1)
      (row145.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row145_layerCover_checked :
    coverCheck (row145.height.i * (row145.height.i - 1)) (row145.height.n0 - 1)
      (row145.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layerCover_checked
