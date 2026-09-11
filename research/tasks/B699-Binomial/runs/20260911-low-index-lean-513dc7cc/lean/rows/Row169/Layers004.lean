import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row169Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer004_checked :
    coverLayerCheck row169.height row169.goods { lower := 454272, upper := 908544, M := 5 } = true := by
  decide +kernel

theorem row169_layer005_checked :
    coverLayerCheck row169.height row169.goods { lower := 908544, upper := 1817088, M := 4 } = true := by
  decide +kernel

theorem row169_layer006_checked :
    coverLayerCheck row169.height row169.goods { lower := 1817088, upper := 3634176, M := 3 } = true := by
  decide +kernel

theorem row169_layer007_checked :
    coverLayerCheck row169.height row169.goods { lower := 3634176, upper := 7268352, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer007_checked
