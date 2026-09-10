import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer040_checked :
    coverLayerCheck row035.height row035.goods { lower := 1308418837053440, upper := 2616837674106880, M := 15 } = true := by
  decide +kernel

theorem row035_layer041_checked :
    coverLayerCheck row035.height row035.goods { lower := 2616837674106880, upper := 5233675348213760, M := 15 } = true := by
  decide +kernel

theorem row035_layer042_checked :
    coverLayerCheck row035.height row035.goods { lower := 5233675348213760, upper := 10467350696427520, M := 14 } = true := by
  decide +kernel

theorem row035_layer043_checked :
    coverLayerCheck row035.height row035.goods { lower := 10467350696427520, upper := 20934701392855040, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer043_checked
