import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer020_checked :
    coverLayerCheck row060.height row060.goods { lower := 3711959040, upper := 7423918080, M := 4 } = true := by
  decide +kernel

theorem row060_layer021_checked :
    coverLayerCheck row060.height row060.goods { lower := 7423918080, upper := 14847836160, M := 3 } = true := by
  decide +kernel

theorem row060_layer022_checked :
    coverLayerCheck row060.height row060.goods { lower := 14847836160, upper := 29695672320, M := 3 } = true := by
  decide +kernel

theorem row060_layer023_checked :
    coverLayerCheck row060.height row060.goods { lower := 29695672320, upper := 59391344640, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer023_checked
