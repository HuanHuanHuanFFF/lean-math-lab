import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer072_checked :
    coverLayerCheck row036.height row036.goods { lower := 5950181768415752969256960, upper := 11900363536831505938513920, M := 2 } = true := by
  decide +kernel

theorem row036_layer073_checked :
    coverLayerCheck row036.height row036.goods { lower := 11900363536831505938513920, upper := 23800727073663011877027840, M := 2 } = true := by
  decide +kernel

theorem row036_layer074_checked :
    coverLayerCheck row036.height row036.goods { lower := 23800727073663011877027840, upper := 47601454147326023754055680, M := 2 } = true := by
  decide +kernel

theorem row036_layer075_checked :
    coverLayerCheck row036.height row036.goods { lower := 47601454147326023754055680, upper := 95202908294652047508111360, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer075_checked
