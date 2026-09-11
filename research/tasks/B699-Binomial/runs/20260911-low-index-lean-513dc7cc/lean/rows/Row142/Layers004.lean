import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row142Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer004_checked :
    coverLayerCheck row142.height row142.goods { lower := 320352, upper := 640704, M := 6 } = true := by
  decide +kernel

theorem row142_layer005_checked :
    coverLayerCheck row142.height row142.goods { lower := 640704, upper := 1281408, M := 5 } = true := by
  decide +kernel

theorem row142_layer006_checked :
    coverLayerCheck row142.height row142.goods { lower := 1281408, upper := 2562816, M := 4 } = true := by
  decide +kernel

theorem row142_layer007_checked :
    coverLayerCheck row142.height row142.goods { lower := 2562816, upper := 5125632, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer007_checked
