import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row170Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row170_layer004_checked :
    coverLayerCheck row170.height row170.goods { lower := 459680, upper := 919360, M := 4 } = true := by
  decide +kernel

theorem row170_layer005_checked :
    coverLayerCheck row170.height row170.goods { lower := 919360, upper := 1838720, M := 3 } = true := by
  decide +kernel

theorem row170_layer006_checked :
    coverLayerCheck row170.height row170.goods { lower := 1838720, upper := 3677440, M := 3 } = true := by
  decide +kernel

theorem row170_layer007_checked :
    coverLayerCheck row170.height row170.goods { lower := 3677440, upper := 7354880, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row170_layer007_checked
