import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row147Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row147_layer004_checked :
    coverLayerCheck row147.height row147.goods { lower := 343392, upper := 686784, M := 4 } = true := by
  decide +kernel

theorem row147_layer005_checked :
    coverLayerCheck row147.height row147.goods { lower := 686784, upper := 1373568, M := 3 } = true := by
  decide +kernel

theorem row147_layer006_checked :
    coverLayerCheck row147.height row147.goods { lower := 1373568, upper := 2747136, M := 3 } = true := by
  decide +kernel

theorem row147_layer007_checked :
    coverLayerCheck row147.height row147.goods { lower := 2747136, upper := 5494272, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row147_layer007_checked
