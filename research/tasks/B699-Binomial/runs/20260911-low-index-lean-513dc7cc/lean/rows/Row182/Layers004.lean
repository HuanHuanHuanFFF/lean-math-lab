import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row182Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row182_layer004_checked :
    coverLayerCheck row182.height row182.goods { lower := 527072, upper := 1054144, M := 5 } = true := by
  decide +kernel

theorem row182_layer005_checked :
    coverLayerCheck row182.height row182.goods { lower := 1054144, upper := 2108288, M := 4 } = true := by
  decide +kernel

theorem row182_layer006_checked :
    coverLayerCheck row182.height row182.goods { lower := 2108288, upper := 4216576, M := 3 } = true := by
  decide +kernel

theorem row182_layer007_checked :
    coverLayerCheck row182.height row182.goods { lower := 4216576, upper := 8433152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row182_layer007_checked
