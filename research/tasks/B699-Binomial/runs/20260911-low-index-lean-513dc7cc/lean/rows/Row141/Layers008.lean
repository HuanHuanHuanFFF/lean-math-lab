import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row141Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer008_checked :
    coverLayerCheck row141.height row141.goods { lower := 5053440, upper := 10106880, M := 3 } = true := by
  decide +kernel

theorem row141_layer009_checked :
    coverLayerCheck row141.height row141.goods { lower := 10106880, upper := 20213760, M := 2 } = true := by
  decide +kernel

theorem row141_layer010_checked :
    coverLayerCheck row141.height row141.goods { lower := 20213760, upper := 40427520, M := 2 } = true := by
  decide +kernel

theorem row141_layer011_checked :
    coverLayerCheck row141.height row141.goods { lower := 40427520, upper := 80855040, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer011_checked
