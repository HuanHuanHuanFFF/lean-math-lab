import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_registered :
    decide (row053.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row053_small_checked :
    coverCheck (2 * row053.height.i + 2) (row053.height.i * (row053.height.i - 1) - 1)
      (row053.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row053_layerCover_checked :
    coverCheck (row053.height.i * (row053.height.i - 1)) (row053.height.n0 - 1)
      (row053.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layerCover_checked
