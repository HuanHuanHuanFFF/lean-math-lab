import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row109Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer012_checked :
    coverLayerCheck row109.height row109.goods { lower := 48218112, upper := 96436224, M := 3 } = true := by
  decide +kernel

theorem row109_layer013_checked :
    coverLayerCheck row109.height row109.goods { lower := 96436224, upper := 192872448, M := 2 } = true := by
  decide +kernel

theorem row109_layer014_checked :
    coverLayerCheck row109.height row109.goods { lower := 192872448, upper := 385744896, M := 2 } = true := by
  decide +kernel

theorem row109_layer015_checked :
    coverLayerCheck row109.height row109.goods { lower := 385744896, upper := 771489792, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer015_checked
