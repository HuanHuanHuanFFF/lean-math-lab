import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row080Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer024_checked :
    coverLayerCheck row080.height row080.goods { lower := 106032005120, upper := 212064010240, M := 2 } = true := by
  decide +kernel

theorem row080_layer025_checked :
    coverLayerCheck row080.height row080.goods { lower := 212064010240, upper := 424128020480, M := 1 } = true := by
  decide +kernel

theorem row080_layer026_checked :
    coverLayerCheck row080.height row080.goods { lower := 424128020480, upper := 848256040960, M := 1 } = true := by
  decide +kernel

theorem row080_layer027_checked :
    coverLayerCheck row080.height row080.goods { lower := 848256040960, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer027_checked
