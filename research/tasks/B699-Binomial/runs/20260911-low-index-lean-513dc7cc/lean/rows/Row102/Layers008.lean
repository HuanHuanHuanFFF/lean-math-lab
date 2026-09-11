import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row102Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer008_checked :
    coverLayerCheck row102.height row102.goods { lower := 2637312, upper := 5274624, M := 5 } = true := by
  decide +kernel

theorem row102_layer009_checked :
    coverLayerCheck row102.height row102.goods { lower := 5274624, upper := 10549248, M := 4 } = true := by
  decide +kernel

theorem row102_layer010_checked :
    coverLayerCheck row102.height row102.goods { lower := 10549248, upper := 21098496, M := 3 } = true := by
  decide +kernel

theorem row102_layer011_checked :
    coverLayerCheck row102.height row102.goods { lower := 21098496, upper := 42196992, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer011_checked
