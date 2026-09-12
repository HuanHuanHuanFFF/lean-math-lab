import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer020_checked :
    coverLayerCheck row042.height row042.goods { lower := 1805647872, upper := 3611295744, M := 18 } = true := by
  decide +kernel

theorem row042_layer021_checked :
    coverLayerCheck row042.height row042.goods { lower := 3611295744, upper := 7222591488, M := 17 } = true := by
  decide +kernel

theorem row042_layer022_checked :
    coverLayerCheck row042.height row042.goods { lower := 7222591488, upper := 14445182976, M := 17 } = true := by
  decide +kernel

theorem row042_layer023_checked :
    coverLayerCheck row042.height row042.goods { lower := 14445182976, upper := 28890365952, M := 16 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer023_checked
