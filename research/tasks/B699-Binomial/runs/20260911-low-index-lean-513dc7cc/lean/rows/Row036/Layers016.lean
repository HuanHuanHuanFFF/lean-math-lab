import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer016_checked :
    coverLayerCheck row036.height row036.goods { lower := 82575360, upper := 165150720, M := 16 } = true := by
  decide +kernel

theorem row036_layer017_checked :
    coverLayerCheck row036.height row036.goods { lower := 165150720, upper := 330301440, M := 15 } = true := by
  decide +kernel

theorem row036_layer018_checked :
    coverLayerCheck row036.height row036.goods { lower := 330301440, upper := 660602880, M := 15 } = true := by
  decide +kernel

theorem row036_layer019_checked :
    coverLayerCheck row036.height row036.goods { lower := 660602880, upper := 1321205760, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer019_checked
