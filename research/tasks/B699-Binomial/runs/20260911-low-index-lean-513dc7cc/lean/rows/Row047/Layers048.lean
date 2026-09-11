import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer048_checked :
    coverLayerCheck row047.height row047.goods { lower := 608548899648438272, upper := 1217097799296876544, M := 2 } = true := by
  decide +kernel

theorem row047_layer049_checked :
    coverLayerCheck row047.height row047.goods { lower := 1217097799296876544, upper := 2434195598593753088, M := 2 } = true := by
  decide +kernel

theorem row047_layer050_checked :
    coverLayerCheck row047.height row047.goods { lower := 2434195598593753088, upper := 4868391197187506176, M := 1 } = true := by
  decide +kernel

theorem row047_layer051_checked :
    coverLayerCheck row047.height row047.goods { lower := 4868391197187506176, upper := 9736782394375012352, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer051_checked
