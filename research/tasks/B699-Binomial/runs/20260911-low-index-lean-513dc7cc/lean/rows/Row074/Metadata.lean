import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row074Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_registered :
    decide (row074.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row074_small_checked :
    coverCheck (2 * row074.height.i + 2) (row074.height.i * (row074.height.i - 1) - 1)
      (row074.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row074_layerCover_checked :
    coverCheck (row074.height.i * (row074.height.i - 1)) (row074.height.n0 - 1)
      (row074.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layerCover_checked
