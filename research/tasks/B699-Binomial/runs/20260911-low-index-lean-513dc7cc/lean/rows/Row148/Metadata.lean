import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row148Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row148_registered :
    decide (row148.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row148_small_checked :
    coverCheck (2 * row148.height.i + 2) (row148.height.i * (row148.height.i - 1) - 1)
      (row148.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row148_layerCover_checked :
    coverCheck (row148.height.i * (row148.height.i - 1)) (row148.height.n0 - 1)
      (row148.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row148_layerCover_checked
