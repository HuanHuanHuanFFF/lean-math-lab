import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row092Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer012_checked :
    coverLayerCheck row092.height row092.goods { lower := 34291712, upper := 68583424, M := 3 } = true := by
  decide +kernel

theorem row092_layer013_checked :
    coverLayerCheck row092.height row092.goods { lower := 68583424, upper := 137166848, M := 3 } = true := by
  decide +kernel

theorem row092_layer014_checked :
    coverLayerCheck row092.height row092.goods { lower := 137166848, upper := 274333696, M := 2 } = true := by
  decide +kernel

theorem row092_layer015_checked :
    coverLayerCheck row092.height row092.goods { lower := 274333696, upper := 548667392, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer015_checked
