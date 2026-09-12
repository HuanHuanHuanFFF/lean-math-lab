import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row076Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer024_checked :
    coverLayerCheck row076.height row076.goods { lower := 95630131200, upper := 191260262400, M := 2 } = true := by
  decide +kernel

theorem row076_layer025_checked :
    coverLayerCheck row076.height row076.goods { lower := 191260262400, upper := 382520524800, M := 1 } = true := by
  decide +kernel

theorem row076_layer026_checked :
    coverLayerCheck row076.height row076.goods { lower := 382520524800, upper := 765041049600, M := 1 } = true := by
  decide +kernel

theorem row076_layer027_checked :
    coverLayerCheck row076.height row076.goods { lower := 765041049600, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer027_checked
