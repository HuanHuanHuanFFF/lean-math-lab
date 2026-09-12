import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row123Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row123_layer004_checked :
    coverLayerCheck row123.height row123.goods { lower := 240096, upper := 480192, M := 7 } = true := by
  decide +kernel

theorem row123_layer005_checked :
    coverLayerCheck row123.height row123.goods { lower := 480192, upper := 960384, M := 6 } = true := by
  decide +kernel

theorem row123_layer006_checked :
    coverLayerCheck row123.height row123.goods { lower := 960384, upper := 1920768, M := 5 } = true := by
  decide +kernel

theorem row123_layer007_checked :
    coverLayerCheck row123.height row123.goods { lower := 1920768, upper := 3841536, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row123_layer007_checked
