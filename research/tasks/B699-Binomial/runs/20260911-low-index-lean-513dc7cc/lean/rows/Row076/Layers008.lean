import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer008_checked :
    coverLayerCheck row076.height row076.goods { lower := 1459200, upper := 2918400, M := 11 } = true := by
  decide +kernel

theorem row076_layer009_checked :
    coverLayerCheck row076.height row076.goods { lower := 2918400, upper := 5836800, M := 9 } = true := by
  decide +kernel

theorem row076_layer010_checked :
    coverLayerCheck row076.height row076.goods { lower := 5836800, upper := 11673600, M := 8 } = true := by
  decide +kernel

theorem row076_layer011_checked :
    coverLayerCheck row076.height row076.goods { lower := 11673600, upper := 23347200, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer011_checked
