import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row141Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer004_checked :
    coverLayerCheck row141.height row141.goods { lower := 315840, upper := 631680, M := 7 } = true := by
  decide +kernel

theorem row141_layer005_checked :
    coverLayerCheck row141.height row141.goods { lower := 631680, upper := 1263360, M := 5 } = true := by
  decide +kernel

theorem row141_layer006_checked :
    coverLayerCheck row141.height row141.goods { lower := 1263360, upper := 2526720, M := 4 } = true := by
  decide +kernel

theorem row141_layer007_checked :
    coverLayerCheck row141.height row141.goods { lower := 2526720, upper := 5053440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer007_checked
