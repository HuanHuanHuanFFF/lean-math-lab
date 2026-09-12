import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row171Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row171_registered :
    decide (row171.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row171_small_checked :
    coverCheck (2 * row171.height.i + 2) (row171.height.i * (row171.height.i - 1) - 1)
      (row171.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row171_layerCover_checked :
    coverCheck (row171.height.i * (row171.height.i - 1)) (row171.height.n0 - 1)
      (row171.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row171_layerCover_checked
