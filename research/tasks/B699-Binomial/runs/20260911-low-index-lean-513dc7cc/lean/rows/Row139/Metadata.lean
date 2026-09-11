import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row139Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row139_registered :
    decide (row139.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row139_small_checked :
    coverCheck (2 * row139.height.i + 2) (row139.height.i * (row139.height.i - 1) - 1)
      (row139.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row139_layerCover_checked :
    coverCheck (row139.height.i * (row139.height.i - 1)) (row139.height.n0 - 1)
      (row139.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row139_layerCover_checked
