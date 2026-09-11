import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer080_checked :
    coverLayerCheck row048.height row048.goods { lower := 2727336649050603418137133056, upper := 5454673298101206836274266112, M := 4 } = true := by
  decide +kernel

theorem row048_layer081_checked :
    coverLayerCheck row048.height row048.goods { lower := 5454673298101206836274266112, upper := 10909346596202413672548532224, M := 3 } = true := by
  decide +kernel

theorem row048_layer082_checked :
    coverLayerCheck row048.height row048.goods { lower := 10909346596202413672548532224, upper := 21818693192404827345097064448, M := 3 } = true := by
  decide +kernel

theorem row048_layer083_checked :
    coverLayerCheck row048.height row048.goods { lower := 21818693192404827345097064448, upper := 43637386384809654690194128896, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer083_checked
