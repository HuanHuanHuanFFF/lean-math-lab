import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row143Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer004_checked :
    coverLayerCheck row143.height row143.goods { lower := 324896, upper := 649792, M := 6 } = true := by
  decide +kernel

theorem row143_layer005_checked :
    coverLayerCheck row143.height row143.goods { lower := 649792, upper := 1299584, M := 5 } = true := by
  decide +kernel

theorem row143_layer006_checked :
    coverLayerCheck row143.height row143.goods { lower := 1299584, upper := 2599168, M := 4 } = true := by
  decide +kernel

theorem row143_layer007_checked :
    coverLayerCheck row143.height row143.goods { lower := 2599168, upper := 5198336, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer007_checked
