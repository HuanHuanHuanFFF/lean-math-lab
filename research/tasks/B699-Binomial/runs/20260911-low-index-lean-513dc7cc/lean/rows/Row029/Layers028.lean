import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer028_checked :
    coverLayerCheck row029.height row029.goods { lower := 217969590272, upper := 435939180544, M := 14 } = true := by
  decide +kernel

theorem row029_layer029_checked :
    coverLayerCheck row029.height row029.goods { lower := 435939180544, upper := 871878361088, M := 14 } = true := by
  decide +kernel

theorem row029_layer030_checked :
    coverLayerCheck row029.height row029.goods { lower := 871878361088, upper := 1743756722176, M := 14 } = true := by
  decide +kernel

theorem row029_layer031_checked :
    coverLayerCheck row029.height row029.goods { lower := 1743756722176, upper := 3487513444352, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer031_checked
