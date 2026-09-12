import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row079Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer008_checked :
    coverLayerCheck row079.height row079.goods { lower := 1577472, upper := 3154944, M := 7 } = true := by
  decide +kernel

theorem row079_layer009_checked :
    coverLayerCheck row079.height row079.goods { lower := 3154944, upper := 6309888, M := 6 } = true := by
  decide +kernel

theorem row079_layer010_checked :
    coverLayerCheck row079.height row079.goods { lower := 6309888, upper := 12619776, M := 5 } = true := by
  decide +kernel

theorem row079_layer011_checked :
    coverLayerCheck row079.height row079.goods { lower := 12619776, upper := 25239552, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer011_checked
