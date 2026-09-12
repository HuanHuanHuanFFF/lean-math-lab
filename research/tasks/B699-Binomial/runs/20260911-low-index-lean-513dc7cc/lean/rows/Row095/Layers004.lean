import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row095Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer004_checked :
    coverLayerCheck row095.height row095.goods { lower := 142880, upper := 285760, M := 9 } = true := by
  decide +kernel

theorem row095_layer005_checked :
    coverLayerCheck row095.height row095.goods { lower := 285760, upper := 571520, M := 7 } = true := by
  decide +kernel

theorem row095_layer006_checked :
    coverLayerCheck row095.height row095.goods { lower := 571520, upper := 1143040, M := 6 } = true := by
  decide +kernel

theorem row095_layer007_checked :
    coverLayerCheck row095.height row095.goods { lower := 1143040, upper := 2286080, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer007_checked
