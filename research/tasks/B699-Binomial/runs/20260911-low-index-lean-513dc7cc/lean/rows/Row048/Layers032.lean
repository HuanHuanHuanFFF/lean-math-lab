import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer032_checked :
    coverLayerCheck row048.height row048.goods { lower := 9689446219776, upper := 19378892439552, M := 15 } = true := by
  decide +kernel

theorem row048_layer033_checked :
    coverLayerCheck row048.height row048.goods { lower := 19378892439552, upper := 38757784879104, M := 15 } = true := by
  decide +kernel

theorem row048_layer034_checked :
    coverLayerCheck row048.height row048.goods { lower := 38757784879104, upper := 77515569758208, M := 15 } = true := by
  decide +kernel

theorem row048_layer035_checked :
    coverLayerCheck row048.height row048.goods { lower := 77515569758208, upper := 155031139516416, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer035_checked
