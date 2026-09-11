import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row057Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer008_checked :
    coverLayerCheck row057.height row057.goods { lower := 817152, upper := 1634304, M := 11 } = true := by
  decide +kernel

theorem row057_layer009_checked :
    coverLayerCheck row057.height row057.goods { lower := 1634304, upper := 3268608, M := 10 } = true := by
  decide +kernel

theorem row057_layer010_checked :
    coverLayerCheck row057.height row057.goods { lower := 3268608, upper := 6537216, M := 9 } = true := by
  decide +kernel

theorem row057_layer011_checked :
    coverLayerCheck row057.height row057.goods { lower := 6537216, upper := 13074432, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer011_checked
