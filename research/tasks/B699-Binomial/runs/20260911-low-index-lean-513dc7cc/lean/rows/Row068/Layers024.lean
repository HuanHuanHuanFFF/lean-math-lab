import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row068Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer024_checked :
    coverLayerCheck row068.height row068.goods { lower := 76436996096, upper := 152873992192, M := 2 } = true := by
  decide +kernel

theorem row068_layer025_checked :
    coverLayerCheck row068.height row068.goods { lower := 152873992192, upper := 305747984384, M := 2 } = true := by
  decide +kernel

theorem row068_layer026_checked :
    coverLayerCheck row068.height row068.goods { lower := 305747984384, upper := 611495968768, M := 2 } = true := by
  decide +kernel

theorem row068_layer027_checked :
    coverLayerCheck row068.height row068.goods { lower := 611495968768, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer027_checked
