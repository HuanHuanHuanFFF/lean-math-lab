import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row128Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row128_layer004_checked :
    coverLayerCheck row128.height row128.goods { lower := 260096, upper := 520192, M := 7 } = true := by
  decide +kernel

theorem row128_layer005_checked :
    coverLayerCheck row128.height row128.goods { lower := 520192, upper := 1040384, M := 5 } = true := by
  decide +kernel

theorem row128_layer006_checked :
    coverLayerCheck row128.height row128.goods { lower := 1040384, upper := 2080768, M := 4 } = true := by
  decide +kernel

theorem row128_layer007_checked :
    coverLayerCheck row128.height row128.goods { lower := 2080768, upper := 4161536, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row128_layer007_checked
