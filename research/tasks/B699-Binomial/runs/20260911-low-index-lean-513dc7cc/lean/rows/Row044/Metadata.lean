import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_registered :
    decide (row044.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row044_small_checked :
    coverCheck (2 * row044.height.i + 2) (row044.height.i * (row044.height.i - 1) - 1)
      (row044.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row044_layerCover_checked :
    coverCheck (row044.height.i * (row044.height.i - 1)) (row044.height.n0 - 1)
      (row044.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layerCover_checked
