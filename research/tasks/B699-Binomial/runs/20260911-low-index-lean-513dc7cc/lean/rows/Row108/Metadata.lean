import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row108Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_registered :
    decide (row108.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row108_small_checked :
    coverCheck (2 * row108.height.i + 2) (row108.height.i * (row108.height.i - 1) - 1)
      (row108.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row108_layerCover_checked :
    coverCheck (row108.height.i * (row108.height.i - 1)) (row108.height.n0 - 1)
      (row108.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layerCover_checked
