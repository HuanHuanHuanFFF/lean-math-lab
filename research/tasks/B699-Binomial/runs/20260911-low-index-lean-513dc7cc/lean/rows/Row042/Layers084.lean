import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer084_checked :
    coverLayerCheck row042.height row042.goods { lower := 33308324182022263021504561152, upper := 66616648364044526043009122304, M := 2 } = true := by
  decide +kernel

theorem row042_layer085_checked :
    coverLayerCheck row042.height row042.goods { lower := 66616648364044526043009122304, upper := 133233296728089052086018244608, M := 2 } = true := by
  decide +kernel

theorem row042_layer086_checked :
    coverLayerCheck row042.height row042.goods { lower := 133233296728089052086018244608, upper := 266466593456178104172036489216, M := 2 } = true := by
  decide +kernel

theorem row042_layer087_checked :
    coverLayerCheck row042.height row042.goods { lower := 266466593456178104172036489216, upper := 532933186912356208344072978432, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer087_checked
