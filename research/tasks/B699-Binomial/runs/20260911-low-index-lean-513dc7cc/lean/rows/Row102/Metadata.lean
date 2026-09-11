import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row102Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_registered :
    decide (row102.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row102_small_checked :
    coverCheck (2 * row102.height.i + 2) (row102.height.i * (row102.height.i - 1) - 1)
      (row102.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row102_layerCover_checked :
    coverCheck (row102.height.i * (row102.height.i - 1)) (row102.height.n0 - 1)
      (row102.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layerCover_checked
