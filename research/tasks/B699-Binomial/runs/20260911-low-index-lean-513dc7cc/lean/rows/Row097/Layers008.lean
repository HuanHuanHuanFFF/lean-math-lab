import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row097Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row097_layer008_checked :
    coverLayerCheck row097.height row097.goods { lower := 2383872, upper := 4767744, M := 3 } = true := by
  decide +kernel

theorem row097_layer009_checked :
    coverLayerCheck row097.height row097.goods { lower := 4767744, upper := 9535488, M := 3 } = true := by
  decide +kernel

theorem row097_layer010_checked :
    coverLayerCheck row097.height row097.goods { lower := 9535488, upper := 19070976, M := 2 } = true := by
  decide +kernel

theorem row097_layer011_checked :
    coverLayerCheck row097.height row097.goods { lower := 19070976, upper := 38141952, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row097_layer011_checked
