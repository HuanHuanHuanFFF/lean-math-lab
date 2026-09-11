import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_checked :
    coverLayerCheck row035.height row035.goods { lower := 319438192640, upper := 638876385280, M := 20 } = true := by
  decide +kernel

theorem row035_layer029_checked :
    coverLayerCheck row035.height row035.goods { lower := 638876385280, upper := 1277752770560, M := 19 } = true := by
  decide +kernel

theorem row035_layer030_checked :
    coverLayerCheck row035.height row035.goods { lower := 1277752770560, upper := 2555505541120, M := 19 } = true := by
  decide +kernel

theorem row035_layer031_checked :
    coverLayerCheck row035.height row035.goods { lower := 2555505541120, upper := 5111011082240, M := 18 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer031_checked
