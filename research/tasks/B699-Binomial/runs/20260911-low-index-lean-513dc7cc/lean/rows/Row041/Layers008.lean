import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer008_checked :
    coverLayerCheck row041.height row041.goods { lower := 419840, upper := 839680, M := 15 } = true := by
  decide +kernel

theorem row041_layer009_checked :
    coverLayerCheck row041.height row041.goods { lower := 839680, upper := 1679360, M := 14 } = true := by
  decide +kernel

theorem row041_layer010_checked :
    coverLayerCheck row041.height row041.goods { lower := 1679360, upper := 3358720, M := 13 } = true := by
  decide +kernel

theorem row041_layer011_checked :
    coverLayerCheck row041.height row041.goods { lower := 3358720, upper := 6717440, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer011_checked
