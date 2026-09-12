import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row111Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row111_registered :
    decide (row111.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row111_small_checked :
    coverCheck (2 * row111.height.i + 2) (row111.height.i * (row111.height.i - 1) - 1)
      (row111.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row111_layerCover_checked :
    coverCheck (row111.height.i * (row111.height.i - 1)) (row111.height.n0 - 1)
      (row111.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row111_layerCover_checked
