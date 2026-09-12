import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row104Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer016_checked :
    coverLayerCheck row104.height row104.goods { lower := 702021632, upper := 1404043264, M := 2 } = true := by
  decide +kernel

theorem row104_layer017_checked :
    coverLayerCheck row104.height row104.goods { lower := 1404043264, upper := 2808086528, M := 1 } = true := by
  decide +kernel

theorem row104_layer018_checked :
    coverLayerCheck row104.height row104.goods { lower := 2808086528, upper := 5616173056, M := 1 } = true := by
  decide +kernel

theorem row104_layer019_checked :
    coverLayerCheck row104.height row104.goods { lower := 5616173056, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer019_checked
