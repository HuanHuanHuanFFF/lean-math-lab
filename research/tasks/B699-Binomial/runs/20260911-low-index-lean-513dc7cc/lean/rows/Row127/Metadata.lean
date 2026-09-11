import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row127Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row127_registered :
    decide (row127.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row127_small_checked :
    coverCheck (2 * row127.height.i + 2) (row127.height.i * (row127.height.i - 1) - 1)
      (row127.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row127_layerCover_checked :
    coverCheck (row127.height.i * (row127.height.i - 1)) (row127.height.n0 - 1)
      (row127.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row127_layerCover_checked
