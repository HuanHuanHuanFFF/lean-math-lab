import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer024_checked :
    coverLayerCheck row041.height row041.goods { lower := 27514634240, upper := 55029268480, M := 4 } = true := by
  decide +kernel

theorem row041_layer025_checked :
    coverLayerCheck row041.height row041.goods { lower := 55029268480, upper := 110058536960, M := 4 } = true := by
  decide +kernel

theorem row041_layer026_checked :
    coverLayerCheck row041.height row041.goods { lower := 110058536960, upper := 220117073920, M := 4 } = true := by
  decide +kernel

theorem row041_layer027_checked :
    coverLayerCheck row041.height row041.goods { lower := 220117073920, upper := 440234147840, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer027_checked
