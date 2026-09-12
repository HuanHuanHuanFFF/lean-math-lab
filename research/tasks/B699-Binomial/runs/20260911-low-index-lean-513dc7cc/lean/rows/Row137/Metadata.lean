import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row137Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row137_registered :
    decide (row137.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row137_small_checked :
    coverCheck (2 * row137.height.i + 2) (row137.height.i * (row137.height.i - 1) - 1)
      (row137.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row137_layerCover_checked :
    coverCheck (row137.height.i * (row137.height.i - 1)) (row137.height.n0 - 1)
      (row137.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row137_layerCover_checked
