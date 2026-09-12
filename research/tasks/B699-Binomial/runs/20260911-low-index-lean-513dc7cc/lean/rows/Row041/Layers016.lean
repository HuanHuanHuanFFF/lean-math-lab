import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer016_checked :
    coverLayerCheck row041.height row041.goods { lower := 107479040, upper := 214958080, M := 8 } = true := by
  decide +kernel

theorem row041_layer017_checked :
    coverLayerCheck row041.height row041.goods { lower := 214958080, upper := 429916160, M := 7 } = true := by
  decide +kernel

theorem row041_layer018_checked :
    coverLayerCheck row041.height row041.goods { lower := 429916160, upper := 859832320, M := 7 } = true := by
  decide +kernel

theorem row041_layer019_checked :
    coverLayerCheck row041.height row041.goods { lower := 859832320, upper := 1719664640, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer019_checked
