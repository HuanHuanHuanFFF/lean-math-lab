import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row176Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row176_registered :
    decide (row176.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row176_small_checked :
    coverCheck (2 * row176.height.i + 2) (row176.height.i * (row176.height.i - 1) - 1)
      (row176.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row176_layerCover_checked :
    coverCheck (row176.height.i * (row176.height.i - 1)) (row176.height.n0 - 1)
      (row176.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row176_layerCover_checked
