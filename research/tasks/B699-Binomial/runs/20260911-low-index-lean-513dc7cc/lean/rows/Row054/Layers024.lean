import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row054Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer024_checked :
    coverLayerCheck row054.height row054.goods { lower := 48016392192, upper := 96032784384, M := 6 } = true := by
  decide +kernel

theorem row054_layer025_checked :
    coverLayerCheck row054.height row054.goods { lower := 96032784384, upper := 192065568768, M := 6 } = true := by
  decide +kernel

theorem row054_layer026_checked :
    coverLayerCheck row054.height row054.goods { lower := 192065568768, upper := 384131137536, M := 5 } = true := by
  decide +kernel

theorem row054_layer027_checked :
    coverLayerCheck row054.height row054.goods { lower := 384131137536, upper := 768262275072, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer027_checked
