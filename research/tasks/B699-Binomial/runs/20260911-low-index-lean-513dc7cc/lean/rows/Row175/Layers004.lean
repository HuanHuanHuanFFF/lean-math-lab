import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row175Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row175_layer004_checked :
    coverLayerCheck row175.height row175.goods { lower := 487200, upper := 974400, M := 4 } = true := by
  decide +kernel

theorem row175_layer005_checked :
    coverLayerCheck row175.height row175.goods { lower := 974400, upper := 1948800, M := 3 } = true := by
  decide +kernel

theorem row175_layer006_checked :
    coverLayerCheck row175.height row175.goods { lower := 1948800, upper := 3897600, M := 3 } = true := by
  decide +kernel

theorem row175_layer007_checked :
    coverLayerCheck row175.height row175.goods { lower := 3897600, upper := 7795200, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row175_layer007_checked
