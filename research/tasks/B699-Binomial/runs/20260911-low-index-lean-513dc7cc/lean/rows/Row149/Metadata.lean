import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row149Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row149_registered :
    decide (row149.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row149_small_checked :
    coverCheck (2 * row149.height.i + 2) (row149.height.i * (row149.height.i - 1) - 1)
      (row149.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row149_layerCover_checked :
    coverCheck (row149.height.i * (row149.height.i - 1)) (row149.height.n0 - 1)
      (row149.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row149_layerCover_checked
