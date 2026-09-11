import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row098Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer004_checked :
    coverLayerCheck row098.height row098.goods { lower := 152096, upper := 304192, M := 10 } = true := by
  decide +kernel

theorem row098_layer005_checked :
    coverLayerCheck row098.height row098.goods { lower := 304192, upper := 608384, M := 8 } = true := by
  decide +kernel

theorem row098_layer006_checked :
    coverLayerCheck row098.height row098.goods { lower := 608384, upper := 1216768, M := 7 } = true := by
  decide +kernel

theorem row098_layer007_checked :
    coverLayerCheck row098.height row098.goods { lower := 1216768, upper := 2433536, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer007_checked
