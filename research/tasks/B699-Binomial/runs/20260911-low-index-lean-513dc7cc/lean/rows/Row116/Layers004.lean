import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row116Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer004_checked :
    coverLayerCheck row116.height row116.goods { lower := 213440, upper := 426880, M := 12 } = true := by
  decide +kernel

theorem row116_layer005_checked :
    coverLayerCheck row116.height row116.goods { lower := 426880, upper := 853760, M := 10 } = true := by
  decide +kernel

theorem row116_layer006_checked :
    coverLayerCheck row116.height row116.goods { lower := 853760, upper := 1707520, M := 9 } = true := by
  decide +kernel

theorem row116_layer007_checked :
    coverLayerCheck row116.height row116.goods { lower := 1707520, upper := 3415040, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer007_checked
