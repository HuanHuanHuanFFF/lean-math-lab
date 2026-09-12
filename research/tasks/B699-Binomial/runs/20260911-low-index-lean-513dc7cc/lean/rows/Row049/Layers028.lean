import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row049Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer028_checked :
    coverLayerCheck row049.height row049.goods { lower := 631360192512, upper := 1262720385024, M := 10 } = true := by
  decide +kernel

theorem row049_layer029_checked :
    coverLayerCheck row049.height row049.goods { lower := 1262720385024, upper := 2525440770048, M := 10 } = true := by
  decide +kernel

theorem row049_layer030_checked :
    coverLayerCheck row049.height row049.goods { lower := 2525440770048, upper := 5050881540096, M := 9 } = true := by
  decide +kernel

theorem row049_layer031_checked :
    coverLayerCheck row049.height row049.goods { lower := 5050881540096, upper := 10101763080192, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer031_checked
