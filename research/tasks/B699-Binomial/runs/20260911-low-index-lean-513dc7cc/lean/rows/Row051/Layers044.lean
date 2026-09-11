import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer044_checked :
    coverLayerCheck row051.height row051.goods { lower := 44860074413260800, upper := 89720148826521600, M := 1 } = true := by
  decide +kernel

theorem row051_layer045_checked :
    coverLayerCheck row051.height row051.goods { lower := 89720148826521600, upper := 100000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer045_checked
