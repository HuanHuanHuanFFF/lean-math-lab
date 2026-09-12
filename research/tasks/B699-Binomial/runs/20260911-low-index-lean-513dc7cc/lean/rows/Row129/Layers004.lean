import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row129Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer004_checked :
    coverLayerCheck row129.height row129.goods { lower := 264192, upper := 528384, M := 6 } = true := by
  decide +kernel

theorem row129_layer005_checked :
    coverLayerCheck row129.height row129.goods { lower := 528384, upper := 1056768, M := 5 } = true := by
  decide +kernel

theorem row129_layer006_checked :
    coverLayerCheck row129.height row129.goods { lower := 1056768, upper := 2113536, M := 4 } = true := by
  decide +kernel

theorem row129_layer007_checked :
    coverLayerCheck row129.height row129.goods { lower := 2113536, upper := 4227072, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer007_checked
