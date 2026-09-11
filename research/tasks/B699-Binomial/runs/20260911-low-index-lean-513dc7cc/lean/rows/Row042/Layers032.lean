import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row042Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer032_checked :
    coverLayerCheck row042.height row042.goods { lower := 7395933683712, upper := 14791867367424, M := 12 } = true := by
  decide +kernel

theorem row042_layer033_checked :
    coverLayerCheck row042.height row042.goods { lower := 14791867367424, upper := 29583734734848, M := 11 } = true := by
  decide +kernel

theorem row042_layer034_checked :
    coverLayerCheck row042.height row042.goods { lower := 29583734734848, upper := 59167469469696, M := 11 } = true := by
  decide +kernel

theorem row042_layer035_checked :
    coverLayerCheck row042.height row042.goods { lower := 59167469469696, upper := 118334938939392, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer035_checked
