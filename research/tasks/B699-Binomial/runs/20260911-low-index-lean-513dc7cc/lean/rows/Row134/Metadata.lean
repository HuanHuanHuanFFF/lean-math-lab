import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row134Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_registered :
    decide (row134.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row134_small_checked :
    coverCheck (2 * row134.height.i + 2) (row134.height.i * (row134.height.i - 1) - 1)
      (row134.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row134_layerCover_checked :
    coverCheck (row134.height.i * (row134.height.i - 1)) (row134.height.n0 - 1)
      (row134.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layerCover_checked
