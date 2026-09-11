import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer024_checked :
    coverLayerCheck row051.height row051.goods { lower := 42781900800, upper := 85563801600, M := 5 } = true := by
  decide +kernel

theorem row051_layer025_checked :
    coverLayerCheck row051.height row051.goods { lower := 85563801600, upper := 171127603200, M := 5 } = true := by
  decide +kernel

theorem row051_layer026_checked :
    coverLayerCheck row051.height row051.goods { lower := 171127603200, upper := 342255206400, M := 4 } = true := by
  decide +kernel

theorem row051_layer027_checked :
    coverLayerCheck row051.height row051.goods { lower := 342255206400, upper := 684510412800, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer027_checked
