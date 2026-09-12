import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row183Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row183_layer008_checked :
    coverLayerCheck row183.height row183.goods { lower := 8526336, upper := 17052672, M := 2 } = true := by
  decide +kernel

theorem row183_layer009_checked :
    coverLayerCheck row183.height row183.goods { lower := 17052672, upper := 34105344, M := 1 } = true := by
  decide +kernel

theorem row183_layer010_checked :
    coverLayerCheck row183.height row183.goods { lower := 34105344, upper := 68210688, M := 1 } = true := by
  decide +kernel

theorem row183_layer011_checked :
    coverLayerCheck row183.height row183.goods { lower := 68210688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row183_layer011_checked
