import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row181Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_registered :
    decide (row181.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row181_small_checked :
    coverCheck (2 * row181.height.i + 2) (row181.height.i * (row181.height.i - 1) - 1)
      (row181.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row181_layerCover_checked :
    coverCheck (row181.height.i * (row181.height.i - 1)) (row181.height.n0 - 1)
      (row181.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layerCover_checked
