import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row098Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer008_checked :
    coverLayerCheck row098.height row098.goods { lower := 2433536, upper := 4867072, M := 5 } = true := by
  decide +kernel

theorem row098_layer009_checked :
    coverLayerCheck row098.height row098.goods { lower := 4867072, upper := 9734144, M := 4 } = true := by
  decide +kernel

theorem row098_layer010_checked :
    coverLayerCheck row098.height row098.goods { lower := 9734144, upper := 19468288, M := 3 } = true := by
  decide +kernel

theorem row098_layer011_checked :
    coverLayerCheck row098.height row098.goods { lower := 19468288, upper := 38936576, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer011_checked
