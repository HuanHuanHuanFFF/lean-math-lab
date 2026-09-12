import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row175Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_registered :
    decide (row175.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row175_small_checked :
    coverCheck (2 * row175.height.i + 2) (row175.height.i * (row175.height.i - 1) - 1)
      (row175.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row175_layerCover_checked :
    coverCheck (row175.height.i * (row175.height.i - 1)) (row175.height.n0 - 1)
      (row175.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layerCover_checked
