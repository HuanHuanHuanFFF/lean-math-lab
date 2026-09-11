import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer020_checked :
    coverLayerCheck row054.height row054.goods { lower := 3001024512, upper := 6002049024, M := 8 } = true := by
  decide +kernel

theorem row054_layer021_checked :
    coverLayerCheck row054.height row054.goods { lower := 6002049024, upper := 12004098048, M := 8 } = true := by
  decide +kernel

theorem row054_layer022_checked :
    coverLayerCheck row054.height row054.goods { lower := 12004098048, upper := 24008196096, M := 7 } = true := by
  decide +kernel

theorem row054_layer023_checked :
    coverLayerCheck row054.height row054.goods { lower := 24008196096, upper := 48016392192, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer023_checked
