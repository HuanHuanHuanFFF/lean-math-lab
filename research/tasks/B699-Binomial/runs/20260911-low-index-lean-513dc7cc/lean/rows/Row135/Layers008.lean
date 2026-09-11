import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row135Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row135_layer008_checked :
    coverLayerCheck row135.height row135.goods { lower := 4631040, upper := 9262080, M := 2 } = true := by
  decide +kernel

theorem row135_layer009_checked :
    coverLayerCheck row135.height row135.goods { lower := 9262080, upper := 18524160, M := 2 } = true := by
  decide +kernel

theorem row135_layer010_checked :
    coverLayerCheck row135.height row135.goods { lower := 18524160, upper := 37048320, M := 1 } = true := by
  decide +kernel

theorem row135_layer011_checked :
    coverLayerCheck row135.height row135.goods { lower := 37048320, upper := 74096640, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row135_layer011_checked
