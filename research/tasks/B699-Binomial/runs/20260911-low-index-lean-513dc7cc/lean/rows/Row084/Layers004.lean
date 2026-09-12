import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer004_checked :
    coverLayerCheck row084.height row084.goods { lower := 111552, upper := 223104, M := 18 } = true := by
  decide +kernel

theorem row084_layer005_checked :
    coverLayerCheck row084.height row084.goods { lower := 223104, upper := 446208, M := 15 } = true := by
  decide +kernel

theorem row084_layer006_checked :
    coverLayerCheck row084.height row084.goods { lower := 446208, upper := 892416, M := 13 } = true := by
  decide +kernel

theorem row084_layer007_checked :
    coverLayerCheck row084.height row084.goods { lower := 892416, upper := 1784832, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer007_checked
