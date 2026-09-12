import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer080_checked :
    coverLayerCheck row042.height row042.goods { lower := 2081770261376391438844035072, upper := 4163540522752782877688070144, M := 2 } = true := by
  decide +kernel

theorem row042_layer081_checked :
    coverLayerCheck row042.height row042.goods { lower := 4163540522752782877688070144, upper := 8327081045505565755376140288, M := 2 } = true := by
  decide +kernel

theorem row042_layer082_checked :
    coverLayerCheck row042.height row042.goods { lower := 8327081045505565755376140288, upper := 16654162091011131510752280576, M := 2 } = true := by
  decide +kernel

theorem row042_layer083_checked :
    coverLayerCheck row042.height row042.goods { lower := 16654162091011131510752280576, upper := 33308324182022263021504561152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer083_checked
