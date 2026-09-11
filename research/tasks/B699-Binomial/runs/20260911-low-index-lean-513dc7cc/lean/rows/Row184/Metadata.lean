import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row184Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row184_registered :
    decide (row184.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row184_small_checked :
    coverCheck (2 * row184.height.i + 2) (row184.height.i * (row184.height.i - 1) - 1)
      (row184.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row184_layerCover_checked :
    coverCheck (row184.height.i * (row184.height.i - 1)) (row184.height.n0 - 1)
      (row184.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row184_layerCover_checked
