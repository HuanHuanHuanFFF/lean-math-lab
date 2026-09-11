import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row081Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_registered :
    decide (row081.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row081_small_checked :
    coverCheck (2 * row081.height.i + 2) (row081.height.i * (row081.height.i - 1) - 1)
      (row081.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row081_layerCover_checked :
    coverCheck (row081.height.i * (row081.height.i - 1)) (row081.height.n0 - 1)
      (row081.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layerCover_checked
