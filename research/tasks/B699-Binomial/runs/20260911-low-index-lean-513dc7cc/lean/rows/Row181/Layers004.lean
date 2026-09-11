import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row181Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer004_checked :
    coverLayerCheck row181.height row181.goods { lower := 521280, upper := 1042560, M := 4 } = true := by
  decide +kernel

theorem row181_layer005_checked :
    coverLayerCheck row181.height row181.goods { lower := 1042560, upper := 2085120, M := 3 } = true := by
  decide +kernel

theorem row181_layer006_checked :
    coverLayerCheck row181.height row181.goods { lower := 2085120, upper := 4170240, M := 2 } = true := by
  decide +kernel

theorem row181_layer007_checked :
    coverLayerCheck row181.height row181.goods { lower := 4170240, upper := 8340480, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer007_checked
