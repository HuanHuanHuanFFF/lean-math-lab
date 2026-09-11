import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row136Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row136_layer004_checked :
    coverLayerCheck row136.height row136.goods { lower := 293760, upper := 587520, M := 5 } = true := by
  decide +kernel

theorem row136_layer005_checked :
    coverLayerCheck row136.height row136.goods { lower := 587520, upper := 1175040, M := 4 } = true := by
  decide +kernel

theorem row136_layer006_checked :
    coverLayerCheck row136.height row136.goods { lower := 1175040, upper := 2350080, M := 3 } = true := by
  decide +kernel

theorem row136_layer007_checked :
    coverLayerCheck row136.height row136.goods { lower := 2350080, upper := 4700160, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row136_layer007_checked
