import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row102Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer004_checked :
    coverLayerCheck row102.height row102.goods { lower := 164832, upper := 329664, M := 10 } = true := by
  decide +kernel

theorem row102_layer005_checked :
    coverLayerCheck row102.height row102.goods { lower := 329664, upper := 659328, M := 8 } = true := by
  decide +kernel

theorem row102_layer006_checked :
    coverLayerCheck row102.height row102.goods { lower := 659328, upper := 1318656, M := 7 } = true := by
  decide +kernel

theorem row102_layer007_checked :
    coverLayerCheck row102.height row102.goods { lower := 1318656, upper := 2637312, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer007_checked
