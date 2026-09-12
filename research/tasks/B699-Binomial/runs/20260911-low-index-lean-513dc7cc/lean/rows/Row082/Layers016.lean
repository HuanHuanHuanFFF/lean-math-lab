import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row082Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer016_checked :
    coverLayerCheck row082.height row082.goods { lower := 435290112, upper := 870580224, M := 2 } = true := by
  decide +kernel

theorem row082_layer017_checked :
    coverLayerCheck row082.height row082.goods { lower := 870580224, upper := 1741160448, M := 2 } = true := by
  decide +kernel

theorem row082_layer018_checked :
    coverLayerCheck row082.height row082.goods { lower := 1741160448, upper := 3482320896, M := 2 } = true := by
  decide +kernel

theorem row082_layer019_checked :
    coverLayerCheck row082.height row082.goods { lower := 3482320896, upper := 6964641792, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer019_checked
