import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer016_checked :
    coverLayerCheck row087.height row087.goods { lower := 490340352, upper := 980680704, M := 2 } = true := by
  decide +kernel

theorem row087_layer017_checked :
    coverLayerCheck row087.height row087.goods { lower := 980680704, upper := 1961361408, M := 2 } = true := by
  decide +kernel

theorem row087_layer018_checked :
    coverLayerCheck row087.height row087.goods { lower := 1961361408, upper := 3922722816, M := 2 } = true := by
  decide +kernel

theorem row087_layer019_checked :
    coverLayerCheck row087.height row087.goods { lower := 3922722816, upper := 7845445632, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer019_checked
