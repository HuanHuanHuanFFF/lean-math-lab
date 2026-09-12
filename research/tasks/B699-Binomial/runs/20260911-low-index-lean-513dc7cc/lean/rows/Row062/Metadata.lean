import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row062Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_registered :
    decide (row062.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row062_small_checked :
    coverCheck (2 * row062.height.i + 2) (row062.height.i * (row062.height.i - 1) - 1)
      (row062.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row062_layerCover_checked :
    coverCheck (row062.height.i * (row062.height.i - 1)) (row062.height.n0 - 1)
      (row062.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layerCover_checked
