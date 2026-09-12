import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row059Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer016_checked :
    coverLayerCheck row059.height row059.goods { lower := 224264192, upper := 448528384, M := 3 } = true := by
  decide +kernel

theorem row059_layer017_checked :
    coverLayerCheck row059.height row059.goods { lower := 448528384, upper := 897056768, M := 2 } = true := by
  decide +kernel

theorem row059_layer018_checked :
    coverLayerCheck row059.height row059.goods { lower := 897056768, upper := 1794113536, M := 2 } = true := by
  decide +kernel

theorem row059_layer019_checked :
    coverLayerCheck row059.height row059.goods { lower := 1794113536, upper := 3588227072, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer019_checked
