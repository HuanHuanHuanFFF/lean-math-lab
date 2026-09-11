import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row114Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer008_checked :
    coverLayerCheck row114.height row114.goods { lower := 3297792, upper := 6595584, M := 7 } = true := by
  decide +kernel

theorem row114_layer009_checked :
    coverLayerCheck row114.height row114.goods { lower := 6595584, upper := 13191168, M := 6 } = true := by
  decide +kernel

theorem row114_layer010_checked :
    coverLayerCheck row114.height row114.goods { lower := 13191168, upper := 26382336, M := 5 } = true := by
  decide +kernel

theorem row114_layer011_checked :
    coverLayerCheck row114.height row114.goods { lower := 26382336, upper := 52764672, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer011_checked
