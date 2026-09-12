import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row161Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_registered :
    decide (row161.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row161_small_checked :
    coverCheck (2 * row161.height.i + 2) (row161.height.i * (row161.height.i - 1) - 1)
      (row161.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row161_layerCover_checked :
    coverCheck (row161.height.i * (row161.height.i - 1)) (row161.height.n0 - 1)
      (row161.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layerCover_checked
