import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row129Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row129_layer008_checked :
    coverLayerCheck row129.height row129.goods { lower := 4227072, upper := 8454144, M := 2 } = true := by
  decide +kernel

theorem row129_layer009_checked :
    coverLayerCheck row129.height row129.goods { lower := 8454144, upper := 16908288, M := 2 } = true := by
  decide +kernel

theorem row129_layer010_checked :
    coverLayerCheck row129.height row129.goods { lower := 16908288, upper := 33816576, M := 2 } = true := by
  decide +kernel

theorem row129_layer011_checked :
    coverLayerCheck row129.height row129.goods { lower := 33816576, upper := 67633152, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row129_layer011_checked
