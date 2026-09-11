import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row163Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row163_registered :
    decide (row163.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row163_small_checked :
    coverCheck (2 * row163.height.i + 2) (row163.height.i * (row163.height.i - 1) - 1)
      (row163.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row163_layerCover_checked :
    coverCheck (row163.height.i * (row163.height.i - 1)) (row163.height.n0 - 1)
      (row163.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row163_layerCover_checked
