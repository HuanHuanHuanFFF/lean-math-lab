import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row053Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer024_checked :
    coverLayerCheck row053.height row053.goods { lower := 46238007296, upper := 92476014592, M := 2 } = true := by
  decide +kernel

theorem row053_layer025_checked :
    coverLayerCheck row053.height row053.goods { lower := 92476014592, upper := 184952029184, M := 2 } = true := by
  decide +kernel

theorem row053_layer026_checked :
    coverLayerCheck row053.height row053.goods { lower := 184952029184, upper := 369904058368, M := 2 } = true := by
  decide +kernel

theorem row053_layer027_checked :
    coverLayerCheck row053.height row053.goods { lower := 369904058368, upper := 739808116736, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer027_checked
