import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_registered :
    decide (row045.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row045_small_checked :
    coverCheck (2 * row045.height.i + 2) (row045.height.i * (row045.height.i - 1) - 1)
      (row045.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row045_layerCover_checked :
    coverCheck (row045.height.i * (row045.height.i - 1)) (row045.height.n0 - 1)
      (row045.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layerCover_checked
