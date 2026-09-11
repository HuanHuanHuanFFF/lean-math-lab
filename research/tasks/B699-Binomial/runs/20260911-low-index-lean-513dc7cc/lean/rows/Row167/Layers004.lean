import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row167Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer004_checked :
    coverLayerCheck row167.height row167.goods { lower := 443552, upper := 887104, M := 4 } = true := by
  decide +kernel

theorem row167_layer005_checked :
    coverLayerCheck row167.height row167.goods { lower := 887104, upper := 1774208, M := 3 } = true := by
  decide +kernel

theorem row167_layer006_checked :
    coverLayerCheck row167.height row167.goods { lower := 1774208, upper := 3548416, M := 2 } = true := by
  decide +kernel

theorem row167_layer007_checked :
    coverLayerCheck row167.height row167.goods { lower := 3548416, upper := 7096832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer007_checked
