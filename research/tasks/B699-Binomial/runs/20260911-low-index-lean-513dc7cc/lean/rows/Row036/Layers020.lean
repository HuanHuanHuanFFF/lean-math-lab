import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer020_checked :
    coverLayerCheck row036.height row036.goods { lower := 1321205760, upper := 2642411520, M := 13 } = true := by
  decide +kernel

theorem row036_layer021_checked :
    coverLayerCheck row036.height row036.goods { lower := 2642411520, upper := 5284823040, M := 13 } = true := by
  decide +kernel

theorem row036_layer022_checked :
    coverLayerCheck row036.height row036.goods { lower := 5284823040, upper := 10569646080, M := 12 } = true := by
  decide +kernel

theorem row036_layer023_checked :
    coverLayerCheck row036.height row036.goods { lower := 10569646080, upper := 21139292160, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer023_checked
