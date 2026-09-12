import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row103Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row103_layer004_checked :
    coverLayerCheck row103.height row103.goods { lower := 168096, upper := 336192, M := 9 } = true := by
  decide +kernel

theorem row103_layer005_checked :
    coverLayerCheck row103.height row103.goods { lower := 336192, upper := 672384, M := 7 } = true := by
  decide +kernel

theorem row103_layer006_checked :
    coverLayerCheck row103.height row103.goods { lower := 672384, upper := 1344768, M := 6 } = true := by
  decide +kernel

theorem row103_layer007_checked :
    coverLayerCheck row103.height row103.goods { lower := 1344768, upper := 2689536, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row103_layer007_checked
