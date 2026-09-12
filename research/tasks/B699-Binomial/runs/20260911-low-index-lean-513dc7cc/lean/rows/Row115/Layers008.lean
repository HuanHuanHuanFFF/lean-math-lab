import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row115Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer008_checked :
    coverLayerCheck row115.height row115.goods { lower := 3356160, upper := 6712320, M := 7 } = true := by
  decide +kernel

theorem row115_layer009_checked :
    coverLayerCheck row115.height row115.goods { lower := 6712320, upper := 13424640, M := 6 } = true := by
  decide +kernel

theorem row115_layer010_checked :
    coverLayerCheck row115.height row115.goods { lower := 13424640, upper := 26849280, M := 5 } = true := by
  decide +kernel

theorem row115_layer011_checked :
    coverLayerCheck row115.height row115.goods { lower := 26849280, upper := 53698560, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer011_checked
