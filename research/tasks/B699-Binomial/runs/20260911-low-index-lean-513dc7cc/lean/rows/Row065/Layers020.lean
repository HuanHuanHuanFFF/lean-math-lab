import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer020_checked :
    coverLayerCheck row065.height row065.goods { lower := 4362076160, upper := 8724152320, M := 2 } = true := by
  decide +kernel

theorem row065_layer021_checked :
    coverLayerCheck row065.height row065.goods { lower := 8724152320, upper := 17448304640, M := 2 } = true := by
  decide +kernel

theorem row065_layer022_checked :
    coverLayerCheck row065.height row065.goods { lower := 17448304640, upper := 34896609280, M := 2 } = true := by
  decide +kernel

theorem row065_layer023_checked :
    coverLayerCheck row065.height row065.goods { lower := 34896609280, upper := 69793218560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer023_checked
