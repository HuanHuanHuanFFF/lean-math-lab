import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row133Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer004_checked :
    coverLayerCheck row133.height row133.goods { lower := 280896, upper := 561792, M := 6 } = true := by
  decide +kernel

theorem row133_layer005_checked :
    coverLayerCheck row133.height row133.goods { lower := 561792, upper := 1123584, M := 5 } = true := by
  decide +kernel

theorem row133_layer006_checked :
    coverLayerCheck row133.height row133.goods { lower := 1123584, upper := 2247168, M := 4 } = true := by
  decide +kernel

theorem row133_layer007_checked :
    coverLayerCheck row133.height row133.goods { lower := 2247168, upper := 4494336, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer007_checked
