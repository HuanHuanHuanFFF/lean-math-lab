import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row041Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row041_layer028_checked :
    coverLayerCheck row041.height row041.goods { lower := 440234147840, upper := 880468295680, M := 3 } = true := by
  decide +kernel

theorem row041_layer029_checked :
    coverLayerCheck row041.height row041.goods { lower := 880468295680, upper := 1760936591360, M := 3 } = true := by
  decide +kernel

theorem row041_layer030_checked :
    coverLayerCheck row041.height row041.goods { lower := 1760936591360, upper := 3521873182720, M := 3 } = true := by
  decide +kernel

theorem row041_layer031_checked :
    coverLayerCheck row041.height row041.goods { lower := 3521873182720, upper := 7043746365440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row041_layer031_checked
