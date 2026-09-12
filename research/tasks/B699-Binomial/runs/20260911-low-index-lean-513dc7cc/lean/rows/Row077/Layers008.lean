import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row077Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer008_checked :
    coverLayerCheck row077.height row077.goods { lower := 1498112, upper := 2996224, M := 9 } = true := by
  decide +kernel

theorem row077_layer009_checked :
    coverLayerCheck row077.height row077.goods { lower := 2996224, upper := 5992448, M := 8 } = true := by
  decide +kernel

theorem row077_layer010_checked :
    coverLayerCheck row077.height row077.goods { lower := 5992448, upper := 11984896, M := 7 } = true := by
  decide +kernel

theorem row077_layer011_checked :
    coverLayerCheck row077.height row077.goods { lower := 11984896, upper := 23969792, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer011_checked
