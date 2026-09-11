import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row095Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row095_layer008_checked :
    coverLayerCheck row095.height row095.goods { lower := 2286080, upper := 4572160, M := 4 } = true := by
  decide +kernel

theorem row095_layer009_checked :
    coverLayerCheck row095.height row095.goods { lower := 4572160, upper := 9144320, M := 3 } = true := by
  decide +kernel

theorem row095_layer010_checked :
    coverLayerCheck row095.height row095.goods { lower := 9144320, upper := 18288640, M := 3 } = true := by
  decide +kernel

theorem row095_layer011_checked :
    coverLayerCheck row095.height row095.goods { lower := 18288640, upper := 36577280, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row095_layer011_checked
