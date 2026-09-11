import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row084Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row084_layer020_checked :
    coverLayerCheck row084.height row084.goods { lower := 7310671872, upper := 14621343744, M := 2 } = true := by
  decide +kernel

theorem row084_layer021_checked :
    coverLayerCheck row084.height row084.goods { lower := 14621343744, upper := 29242687488, M := 2 } = true := by
  decide +kernel

theorem row084_layer022_checked :
    coverLayerCheck row084.height row084.goods { lower := 29242687488, upper := 58485374976, M := 2 } = true := by
  decide +kernel

theorem row084_layer023_checked :
    coverLayerCheck row084.height row084.goods { lower := 58485374976, upper := 100000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row084_layer023_checked
