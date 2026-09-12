import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row160Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer008_checked :
    coverLayerCheck row160.height row160.goods { lower := 6512640, upper := 13025280, M := 2 } = true := by
  decide +kernel

theorem row160_layer009_checked :
    coverLayerCheck row160.height row160.goods { lower := 13025280, upper := 26050560, M := 1 } = true := by
  decide +kernel

theorem row160_layer010_checked :
    coverLayerCheck row160.height row160.goods { lower := 26050560, upper := 52101120, M := 1 } = true := by
  decide +kernel

theorem row160_layer011_checked :
    coverLayerCheck row160.height row160.goods { lower := 52101120, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer011_checked
