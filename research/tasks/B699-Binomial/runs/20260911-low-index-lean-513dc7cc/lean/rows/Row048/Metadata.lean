import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_registered :
    decide (row048.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row048_small_checked :
    coverCheck (2 * row048.height.i + 2) (row048.height.i * (row048.height.i - 1) - 1)
      (row048.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row048_layerCover_checked :
    coverCheck (row048.height.i * (row048.height.i - 1)) (row048.height.n0 - 1)
      (row048.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layerCover_checked
