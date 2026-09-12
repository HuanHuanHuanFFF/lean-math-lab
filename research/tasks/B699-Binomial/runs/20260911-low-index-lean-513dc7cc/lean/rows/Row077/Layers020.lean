import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row077Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer020_checked :
    coverLayerCheck row077.height row077.goods { lower := 6136266752, upper := 12272533504, M := 2 } = true := by
  decide +kernel

theorem row077_layer021_checked :
    coverLayerCheck row077.height row077.goods { lower := 12272533504, upper := 24545067008, M := 2 } = true := by
  decide +kernel

theorem row077_layer022_checked :
    coverLayerCheck row077.height row077.goods { lower := 24545067008, upper := 49090134016, M := 2 } = true := by
  decide +kernel

theorem row077_layer023_checked :
    coverLayerCheck row077.height row077.goods { lower := 49090134016, upper := 98180268032, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer023_checked
