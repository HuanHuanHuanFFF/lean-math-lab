import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row087Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row087_layer008_checked :
    coverLayerCheck row087.height row087.goods { lower := 1915392, upper := 3830784, M := 7 } = true := by
  decide +kernel

theorem row087_layer009_checked :
    coverLayerCheck row087.height row087.goods { lower := 3830784, upper := 7661568, M := 6 } = true := by
  decide +kernel

theorem row087_layer010_checked :
    coverLayerCheck row087.height row087.goods { lower := 7661568, upper := 15323136, M := 5 } = true := by
  decide +kernel

theorem row087_layer011_checked :
    coverLayerCheck row087.height row087.goods { lower := 15323136, upper := 30646272, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row087_layer011_checked
