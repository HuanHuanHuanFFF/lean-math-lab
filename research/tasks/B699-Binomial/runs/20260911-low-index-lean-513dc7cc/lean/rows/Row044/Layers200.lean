import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer200_checked :
    coverLayerCheck row044.height row044.goods { lower := 3040326779738009601325392278709479643972008064237044044390203392, upper := 6080653559476019202650784557418959287944016128474088088780406784, M := 2 } = true := by
  decide +kernel

theorem row044_layer201_checked :
    coverLayerCheck row044.height row044.goods { lower := 6080653559476019202650784557418959287944016128474088088780406784, upper := 12161307118952038405301569114837918575888032256948176177560813568, M := 2 } = true := by
  decide +kernel

theorem row044_layer202_checked :
    coverLayerCheck row044.height row044.goods { lower := 12161307118952038405301569114837918575888032256948176177560813568, upper := 24322614237904076810603138229675837151776064513896352355121627136, M := 2 } = true := by
  decide +kernel

theorem row044_layer203_checked :
    coverLayerCheck row044.height row044.goods { lower := 24322614237904076810603138229675837151776064513896352355121627136, upper := 48645228475808153621206276459351674303552129027792704710243254272, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer203_checked
