import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row145Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row145_layer004_checked :
    coverLayerCheck row145.height row145.goods { lower := 334080, upper := 668160, M := 5 } = true := by
  decide +kernel

theorem row145_layer005_checked :
    coverLayerCheck row145.height row145.goods { lower := 668160, upper := 1336320, M := 4 } = true := by
  decide +kernel

theorem row145_layer006_checked :
    coverLayerCheck row145.height row145.goods { lower := 1336320, upper := 2672640, M := 3 } = true := by
  decide +kernel

theorem row145_layer007_checked :
    coverLayerCheck row145.height row145.goods { lower := 2672640, upper := 5345280, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row145_layer007_checked
