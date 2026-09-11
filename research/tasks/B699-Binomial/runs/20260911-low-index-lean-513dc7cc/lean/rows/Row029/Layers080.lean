import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer080_checked :
    coverLayerCheck row029.height row029.goods { lower := 981647765527078889861414912, upper := 1963295531054157779722829824, M := 3 } = true := by
  decide +kernel

theorem row029_layer081_checked :
    coverLayerCheck row029.height row029.goods { lower := 1963295531054157779722829824, upper := 3926591062108315559445659648, M := 3 } = true := by
  decide +kernel

theorem row029_layer082_checked :
    coverLayerCheck row029.height row029.goods { lower := 3926591062108315559445659648, upper := 7853182124216631118891319296, M := 3 } = true := by
  decide +kernel

theorem row029_layer083_checked :
    coverLayerCheck row029.height row029.goods { lower := 7853182124216631118891319296, upper := 15706364248433262237782638592, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer083_checked
