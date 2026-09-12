import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row113Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer012_checked :
    coverLayerCheck row113.height row113.goods { lower := 51838976, upper := 103677952, M := 3 } = true := by
  decide +kernel

theorem row113_layer013_checked :
    coverLayerCheck row113.height row113.goods { lower := 103677952, upper := 207355904, M := 2 } = true := by
  decide +kernel

theorem row113_layer014_checked :
    coverLayerCheck row113.height row113.goods { lower := 207355904, upper := 414711808, M := 2 } = true := by
  decide +kernel

theorem row113_layer015_checked :
    coverLayerCheck row113.height row113.goods { lower := 414711808, upper := 829423616, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer015_checked
