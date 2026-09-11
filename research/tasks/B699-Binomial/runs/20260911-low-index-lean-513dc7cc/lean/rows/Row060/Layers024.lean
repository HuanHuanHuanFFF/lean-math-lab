import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer024_checked :
    coverLayerCheck row060.height row060.goods { lower := 59391344640, upper := 118782689280, M := 2 } = true := by
  decide +kernel

theorem row060_layer025_checked :
    coverLayerCheck row060.height row060.goods { lower := 118782689280, upper := 237565378560, M := 2 } = true := by
  decide +kernel

theorem row060_layer026_checked :
    coverLayerCheck row060.height row060.goods { lower := 237565378560, upper := 475130757120, M := 2 } = true := by
  decide +kernel

theorem row060_layer027_checked :
    coverLayerCheck row060.height row060.goods { lower := 475130757120, upper := 950261514240, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer027_checked
