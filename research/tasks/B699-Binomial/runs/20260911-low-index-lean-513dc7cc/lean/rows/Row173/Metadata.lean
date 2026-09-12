import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row173Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_registered :
    decide (row173.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row173_small_checked :
    coverCheck (2 * row173.height.i + 2) (row173.height.i * (row173.height.i - 1) - 1)
      (row173.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row173_layerCover_checked :
    coverCheck (row173.height.i * (row173.height.i - 1)) (row173.height.n0 - 1)
      (row173.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layerCover_checked
