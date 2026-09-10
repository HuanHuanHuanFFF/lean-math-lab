import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer004_checked :
    coverLayerCheck row036.height row036.goods { lower := 20160, upper := 40320, M := 28 } = true := by
  decide +kernel

theorem row036_layer005_checked :
    coverLayerCheck row036.height row036.goods { lower := 40320, upper := 80640, M := 27 } = true := by
  decide +kernel

theorem row036_layer006_checked :
    coverLayerCheck row036.height row036.goods { lower := 80640, upper := 161280, M := 25 } = true := by
  decide +kernel

theorem row036_layer007_checked :
    coverLayerCheck row036.height row036.goods { lower := 161280, upper := 322560, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer007_checked
