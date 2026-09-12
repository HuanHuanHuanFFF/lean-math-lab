import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row059Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer020_checked :
    coverLayerCheck row059.height row059.goods { lower := 3588227072, upper := 7176454144, M := 2 } = true := by
  decide +kernel

theorem row059_layer021_checked :
    coverLayerCheck row059.height row059.goods { lower := 7176454144, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer021_checked
