import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row173Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row173_layer004_checked :
    coverLayerCheck row173.height row173.goods { lower := 476096, upper := 952192, M := 4 } = true := by
  decide +kernel

theorem row173_layer005_checked :
    coverLayerCheck row173.height row173.goods { lower := 952192, upper := 1904384, M := 3 } = true := by
  decide +kernel

theorem row173_layer006_checked :
    coverLayerCheck row173.height row173.goods { lower := 1904384, upper := 3808768, M := 2 } = true := by
  decide +kernel

theorem row173_layer007_checked :
    coverLayerCheck row173.height row173.goods { lower := 3808768, upper := 7617536, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row173_layer007_checked
