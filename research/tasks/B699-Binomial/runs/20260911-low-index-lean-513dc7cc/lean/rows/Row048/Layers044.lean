import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer044_checked :
    coverLayerCheck row048.height row048.goods { lower := 39687971716202496, upper := 79375943432404992, M := 11 } = true := by
  decide +kernel

theorem row048_layer045_checked :
    coverLayerCheck row048.height row048.goods { lower := 79375943432404992, upper := 158751886864809984, M := 10 } = true := by
  decide +kernel

theorem row048_layer046_checked :
    coverLayerCheck row048.height row048.goods { lower := 158751886864809984, upper := 317503773729619968, M := 10 } = true := by
  decide +kernel

theorem row048_layer047_checked :
    coverLayerCheck row048.height row048.goods { lower := 317503773729619968, upper := 635007547459239936, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer047_checked
