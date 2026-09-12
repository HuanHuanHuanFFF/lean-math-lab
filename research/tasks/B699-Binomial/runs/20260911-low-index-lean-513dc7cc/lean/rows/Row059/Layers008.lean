import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row059Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row059_layer008_checked :
    coverLayerCheck row059.height row059.goods { lower := 876032, upper := 1752064, M := 7 } = true := by
  decide +kernel

theorem row059_layer009_checked :
    coverLayerCheck row059.height row059.goods { lower := 1752064, upper := 3504128, M := 6 } = true := by
  decide +kernel

theorem row059_layer010_checked :
    coverLayerCheck row059.height row059.goods { lower := 3504128, upper := 7008256, M := 6 } = true := by
  decide +kernel

theorem row059_layer011_checked :
    coverLayerCheck row059.height row059.goods { lower := 7008256, upper := 14016512, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row059_layer011_checked
