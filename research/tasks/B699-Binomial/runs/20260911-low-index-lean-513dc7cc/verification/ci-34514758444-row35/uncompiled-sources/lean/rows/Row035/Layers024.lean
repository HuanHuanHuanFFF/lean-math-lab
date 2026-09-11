import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer024_checked :
    coverLayerCheck row035.height row035.goods { lower := 19964887040, upper := 39929774080, M := 22 } = true := by
  decide +kernel

theorem row035_layer025_checked :
    coverLayerCheck row035.height row035.goods { lower := 39929774080, upper := 79859548160, M := 21 } = true := by
  decide +kernel

theorem row035_layer026_checked :
    coverLayerCheck row035.height row035.goods { lower := 79859548160, upper := 159719096320, M := 21 } = true := by
  decide +kernel

theorem row035_layer027_checked :
    coverLayerCheck row035.height row035.goods { lower := 159719096320, upper := 319438192640, M := 20 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_checked
