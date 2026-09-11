import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row037Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer024_checked :
    coverLayerCheck row037.height row037.goods { lower := 22347251712, upper := 44694503424, M := 6 } = true := by
  decide +kernel

theorem row037_layer025_checked :
    coverLayerCheck row037.height row037.goods { lower := 44694503424, upper := 89389006848, M := 6 } = true := by
  decide +kernel

theorem row037_layer026_checked :
    coverLayerCheck row037.height row037.goods { lower := 89389006848, upper := 178778013696, M := 5 } = true := by
  decide +kernel

theorem row037_layer027_checked :
    coverLayerCheck row037.height row037.goods { lower := 178778013696, upper := 357556027392, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_checked
