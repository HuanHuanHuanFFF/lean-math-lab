import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row038Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_registered :
    decide (row038.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row038_small_checked :
    coverCheck (2 * row038.height.i + 2) (row038.height.i * (row038.height.i - 1) - 1)
      (row038.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row038_layerCover_checked :
    coverCheck (row038.height.i * (row038.height.i - 1)) (row038.height.n0 - 1)
      (row038.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layerCover_checked
