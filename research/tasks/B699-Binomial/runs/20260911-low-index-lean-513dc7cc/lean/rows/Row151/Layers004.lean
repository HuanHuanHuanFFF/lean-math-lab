import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row151Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row151_layer004_checked :
    coverLayerCheck row151.height row151.goods { lower := 362400, upper := 724800, M := 5 } = true := by
  decide +kernel

theorem row151_layer005_checked :
    coverLayerCheck row151.height row151.goods { lower := 724800, upper := 1449600, M := 4 } = true := by
  decide +kernel

theorem row151_layer006_checked :
    coverLayerCheck row151.height row151.goods { lower := 1449600, upper := 2899200, M := 3 } = true := by
  decide +kernel

theorem row151_layer007_checked :
    coverLayerCheck row151.height row151.goods { lower := 2899200, upper := 5798400, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row151_layer007_checked
