import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_checked :
    coverLayerCheck row035.height row035.goods { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 } = true := by
  decide +kernel

theorem row035_layer129_checked :
    coverLayerCheck row035.height row035.goods { lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2 } = true := by
  decide +kernel

theorem row035_layer130_checked :
    coverLayerCheck row035.height row035.goods { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 } = true := by
  decide +kernel

theorem row035_layer131_checked :
    coverLayerCheck row035.height row035.goods { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_checked
