import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer064_checked :
    coverLayerCheck row029.height row029.goods { lower := 14978756187852155912192, upper := 29957512375704311824384, M := 5 } = true := by
  decide +kernel

theorem row029_layer065_checked :
    coverLayerCheck row029.height row029.goods { lower := 29957512375704311824384, upper := 59915024751408623648768, M := 5 } = true := by
  decide +kernel

theorem row029_layer066_checked :
    coverLayerCheck row029.height row029.goods { lower := 59915024751408623648768, upper := 119830049502817247297536, M := 5 } = true := by
  decide +kernel

theorem row029_layer067_checked :
    coverLayerCheck row029.height row029.goods { lower := 119830049502817247297536, upper := 239660099005634494595072, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer067_checked
