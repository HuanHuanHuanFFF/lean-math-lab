import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer024_checked :
    coverLayerCheck row036.height row036.goods { lower := 21139292160, upper := 42278584320, M := 11 } = true := by
  decide +kernel

theorem row036_layer025_checked :
    coverLayerCheck row036.height row036.goods { lower := 42278584320, upper := 84557168640, M := 11 } = true := by
  decide +kernel

theorem row036_layer026_checked :
    coverLayerCheck row036.height row036.goods { lower := 84557168640, upper := 169114337280, M := 10 } = true := by
  decide +kernel

theorem row036_layer027_checked :
    coverLayerCheck row036.height row036.goods { lower := 169114337280, upper := 338228674560, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer027_checked
