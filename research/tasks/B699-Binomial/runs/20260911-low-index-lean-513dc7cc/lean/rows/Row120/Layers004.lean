import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row120Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer004_checked :
    coverLayerCheck row120.height row120.goods { lower := 228480, upper := 456960, M := 9 } = true := by
  decide +kernel

theorem row120_layer005_checked :
    coverLayerCheck row120.height row120.goods { lower := 456960, upper := 913920, M := 7 } = true := by
  decide +kernel

theorem row120_layer006_checked :
    coverLayerCheck row120.height row120.goods { lower := 913920, upper := 1827840, M := 6 } = true := by
  decide +kernel

theorem row120_layer007_checked :
    coverLayerCheck row120.height row120.goods { lower := 1827840, upper := 3655680, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer007_checked
