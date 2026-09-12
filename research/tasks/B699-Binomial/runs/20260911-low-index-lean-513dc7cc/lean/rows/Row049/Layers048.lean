import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer048_checked :
    coverLayerCheck row049.height row049.goods { lower := 662029145223462912, upper := 1324058290446925824, M := 4 } = true := by
  decide +kernel

theorem row049_layer049_checked :
    coverLayerCheck row049.height row049.goods { lower := 1324058290446925824, upper := 2648116580893851648, M := 4 } = true := by
  decide +kernel

theorem row049_layer050_checked :
    coverLayerCheck row049.height row049.goods { lower := 2648116580893851648, upper := 5296233161787703296, M := 4 } = true := by
  decide +kernel

theorem row049_layer051_checked :
    coverLayerCheck row049.height row049.goods { lower := 5296233161787703296, upper := 10592466323575406592, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer051_checked
