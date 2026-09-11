import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_registered :
    decide (row065.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row065_small_checked :
    coverCheck (2 * row065.height.i + 2) (row065.height.i * (row065.height.i - 1) - 1)
      (row065.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row065_layerCover_checked :
    coverCheck (row065.height.i * (row065.height.i - 1)) (row065.height.n0 - 1)
      (row065.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layerCover_checked
