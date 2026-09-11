import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row093Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row093_layer004_checked :
    coverLayerCheck row093.height row093.goods { lower := 136896, upper := 273792, M := 11 } = true := by
  decide +kernel

theorem row093_layer005_checked :
    coverLayerCheck row093.height row093.goods { lower := 273792, upper := 547584, M := 9 } = true := by
  decide +kernel

theorem row093_layer006_checked :
    coverLayerCheck row093.height row093.goods { lower := 547584, upper := 1095168, M := 7 } = true := by
  decide +kernel

theorem row093_layer007_checked :
    coverLayerCheck row093.height row093.goods { lower := 1095168, upper := 2190336, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row093_layer007_checked
