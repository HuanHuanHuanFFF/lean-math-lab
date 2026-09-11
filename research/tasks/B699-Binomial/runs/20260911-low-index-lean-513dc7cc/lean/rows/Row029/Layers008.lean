import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer008_checked :
    coverLayerCheck row029.height row029.goods { lower := 207872, upper := 415744, M := 26 } = true := by
  decide +kernel

theorem row029_layer009_checked :
    coverLayerCheck row029.height row029.goods { lower := 415744, upper := 831488, M := 25 } = true := by
  decide +kernel

theorem row029_layer010_checked :
    coverLayerCheck row029.height row029.goods { lower := 831488, upper := 1662976, M := 24 } = true := by
  decide +kernel

theorem row029_layer011_checked :
    coverLayerCheck row029.height row029.goods { lower := 1662976, upper := 3325952, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer011_checked
