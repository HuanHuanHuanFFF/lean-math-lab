import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row056Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer012_checked :
    coverLayerCheck row056.height row056.goods { lower := 12615680, upper := 25231360, M := 9 } = true := by
  decide +kernel

theorem row056_layer013_checked :
    coverLayerCheck row056.height row056.goods { lower := 25231360, upper := 50462720, M := 8 } = true := by
  decide +kernel

theorem row056_layer014_checked :
    coverLayerCheck row056.height row056.goods { lower := 50462720, upper := 100925440, M := 7 } = true := by
  decide +kernel

theorem row056_layer015_checked :
    coverLayerCheck row056.height row056.goods { lower := 100925440, upper := 201850880, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer015_checked
