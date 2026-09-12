import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row075Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer024_checked :
    coverLayerCheck row075.height row075.goods { lower := 93113548800, upper := 186227097600, M := 2 } = true := by
  decide +kernel

theorem row075_layer025_checked :
    coverLayerCheck row075.height row075.goods { lower := 186227097600, upper := 372454195200, M := 2 } = true := by
  decide +kernel

theorem row075_layer026_checked :
    coverLayerCheck row075.height row075.goods { lower := 372454195200, upper := 744908390400, M := 2 } = true := by
  decide +kernel

theorem row075_layer027_checked :
    coverLayerCheck row075.height row075.goods { lower := 744908390400, upper := 1489816780800, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer027_checked
