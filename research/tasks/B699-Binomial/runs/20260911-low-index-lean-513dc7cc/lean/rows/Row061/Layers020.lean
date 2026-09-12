import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer020_checked :
    coverLayerCheck row061.height row061.goods { lower := 3837788160, upper := 7675576320, M := 3 } = true := by
  decide +kernel

theorem row061_layer021_checked :
    coverLayerCheck row061.height row061.goods { lower := 7675576320, upper := 15351152640, M := 2 } = true := by
  decide +kernel

theorem row061_layer022_checked :
    coverLayerCheck row061.height row061.goods { lower := 15351152640, upper := 30702305280, M := 2 } = true := by
  decide +kernel

theorem row061_layer023_checked :
    coverLayerCheck row061.height row061.goods { lower := 30702305280, upper := 61404610560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer023_checked
