import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row183Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer004_checked :
    coverLayerCheck row183.height row183.goods { lower := 532896, upper := 1065792, M := 5 } = true := by
  decide +kernel

theorem row183_layer005_checked :
    coverLayerCheck row183.height row183.goods { lower := 1065792, upper := 2131584, M := 3 } = true := by
  decide +kernel

theorem row183_layer006_checked :
    coverLayerCheck row183.height row183.goods { lower := 2131584, upper := 4263168, M := 3 } = true := by
  decide +kernel

theorem row183_layer007_checked :
    coverLayerCheck row183.height row183.goods { lower := 4263168, upper := 8526336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer007_checked
