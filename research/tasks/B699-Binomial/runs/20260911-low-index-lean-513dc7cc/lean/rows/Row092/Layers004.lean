import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row092Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer004_checked :
    coverLayerCheck row092.height row092.goods { lower := 133952, upper := 267904, M := 12 } = true := by
  decide +kernel

theorem row092_layer005_checked :
    coverLayerCheck row092.height row092.goods { lower := 267904, upper := 535808, M := 10 } = true := by
  decide +kernel

theorem row092_layer006_checked :
    coverLayerCheck row092.height row092.goods { lower := 535808, upper := 1071616, M := 8 } = true := by
  decide +kernel

theorem row092_layer007_checked :
    coverLayerCheck row092.height row092.goods { lower := 1071616, upper := 2143232, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer007_checked
