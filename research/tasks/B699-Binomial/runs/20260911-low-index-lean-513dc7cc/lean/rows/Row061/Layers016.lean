import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row061Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer016_checked :
    coverLayerCheck row061.height row061.goods { lower := 239861760, upper := 479723520, M := 4 } = true := by
  decide +kernel

theorem row061_layer017_checked :
    coverLayerCheck row061.height row061.goods { lower := 479723520, upper := 959447040, M := 4 } = true := by
  decide +kernel

theorem row061_layer018_checked :
    coverLayerCheck row061.height row061.goods { lower := 959447040, upper := 1918894080, M := 3 } = true := by
  decide +kernel

theorem row061_layer019_checked :
    coverLayerCheck row061.height row061.goods { lower := 1918894080, upper := 3837788160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer019_checked
