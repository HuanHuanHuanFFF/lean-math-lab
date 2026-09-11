import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row134Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer004_checked :
    coverLayerCheck row134.height row134.goods { lower := 285152, upper := 570304, M := 6 } = true := by
  decide +kernel

theorem row134_layer005_checked :
    coverLayerCheck row134.height row134.goods { lower := 570304, upper := 1140608, M := 5 } = true := by
  decide +kernel

theorem row134_layer006_checked :
    coverLayerCheck row134.height row134.goods { lower := 1140608, upper := 2281216, M := 4 } = true := by
  decide +kernel

theorem row134_layer007_checked :
    coverLayerCheck row134.height row134.goods { lower := 2281216, upper := 4562432, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer007_checked
