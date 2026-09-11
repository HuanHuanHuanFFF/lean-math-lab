import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row168Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row168_layer004_checked :
    coverLayerCheck row168.height row168.goods { lower := 448896, upper := 897792, M := 5 } = true := by
  decide +kernel

theorem row168_layer005_checked :
    coverLayerCheck row168.height row168.goods { lower := 897792, upper := 1795584, M := 4 } = true := by
  decide +kernel

theorem row168_layer006_checked :
    coverLayerCheck row168.height row168.goods { lower := 1795584, upper := 3591168, M := 3 } = true := by
  decide +kernel

theorem row168_layer007_checked :
    coverLayerCheck row168.height row168.goods { lower := 3591168, upper := 7182336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row168_layer007_checked
