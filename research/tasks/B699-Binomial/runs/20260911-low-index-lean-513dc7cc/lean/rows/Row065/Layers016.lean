import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row065Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer016_checked :
    coverLayerCheck row065.height row065.goods { lower := 272629760, upper := 545259520, M := 4 } = true := by
  decide +kernel

theorem row065_layer017_checked :
    coverLayerCheck row065.height row065.goods { lower := 545259520, upper := 1090519040, M := 3 } = true := by
  decide +kernel

theorem row065_layer018_checked :
    coverLayerCheck row065.height row065.goods { lower := 1090519040, upper := 2181038080, M := 3 } = true := by
  decide +kernel

theorem row065_layer019_checked :
    coverLayerCheck row065.height row065.goods { lower := 2181038080, upper := 4362076160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer019_checked
