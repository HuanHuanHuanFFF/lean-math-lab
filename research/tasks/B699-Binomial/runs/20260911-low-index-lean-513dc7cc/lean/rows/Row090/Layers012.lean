import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row090Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer012_checked :
    coverLayerCheck row090.height row090.goods { lower := 32808960, upper := 65617920, M := 4 } = true := by
  decide +kernel

theorem row090_layer013_checked :
    coverLayerCheck row090.height row090.goods { lower := 65617920, upper := 131235840, M := 4 } = true := by
  decide +kernel

theorem row090_layer014_checked :
    coverLayerCheck row090.height row090.goods { lower := 131235840, upper := 262471680, M := 3 } = true := by
  decide +kernel

theorem row090_layer015_checked :
    coverLayerCheck row090.height row090.goods { lower := 262471680, upper := 524943360, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer015_checked
