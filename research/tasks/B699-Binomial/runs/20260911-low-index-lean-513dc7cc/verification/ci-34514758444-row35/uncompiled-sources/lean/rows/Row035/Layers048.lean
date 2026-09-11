import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row035Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer048_checked :
    coverLayerCheck row035.height row035.goods { lower := 334955222285680640, upper := 669910444571361280, M := 12 } = true := by
  decide +kernel

theorem row035_layer049_checked :
    coverLayerCheck row035.height row035.goods { lower := 669910444571361280, upper := 1339820889142722560, M := 12 } = true := by
  decide +kernel

theorem row035_layer050_checked :
    coverLayerCheck row035.height row035.goods { lower := 1339820889142722560, upper := 2679641778285445120, M := 12 } = true := by
  decide +kernel

theorem row035_layer051_checked :
    coverLayerCheck row035.height row035.goods { lower := 2679641778285445120, upper := 5359283556570890240, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer051_checked
