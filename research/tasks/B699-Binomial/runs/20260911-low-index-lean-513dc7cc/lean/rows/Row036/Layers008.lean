import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer008_checked :
    coverLayerCheck row036.height row036.goods { lower := 322560, upper := 645120, M := 23 } = true := by
  decide +kernel

theorem row036_layer009_checked :
    coverLayerCheck row036.height row036.goods { lower := 645120, upper := 1290240, M := 22 } = true := by
  decide +kernel

theorem row036_layer010_checked :
    coverLayerCheck row036.height row036.goods { lower := 1290240, upper := 2580480, M := 21 } = true := by
  decide +kernel

theorem row036_layer011_checked :
    coverLayerCheck row036.height row036.goods { lower := 2580480, upper := 5160960, M := 20 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer011_checked
