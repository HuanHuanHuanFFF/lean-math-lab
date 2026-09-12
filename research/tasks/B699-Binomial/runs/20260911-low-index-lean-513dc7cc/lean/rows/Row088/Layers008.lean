import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row088Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer008_checked :
    coverLayerCheck row088.height row088.goods { lower := 1959936, upper := 3919872, M := 6 } = true := by
  decide +kernel

theorem row088_layer009_checked :
    coverLayerCheck row088.height row088.goods { lower := 3919872, upper := 7839744, M := 5 } = true := by
  decide +kernel

theorem row088_layer010_checked :
    coverLayerCheck row088.height row088.goods { lower := 7839744, upper := 15679488, M := 4 } = true := by
  decide +kernel

theorem row088_layer011_checked :
    coverLayerCheck row088.height row088.goods { lower := 15679488, upper := 31358976, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer011_checked
