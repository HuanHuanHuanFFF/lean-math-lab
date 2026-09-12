import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer012_checked :
    coverLayerCheck row060.height row060.goods { lower := 14499840, upper := 28999680, M := 8 } = true := by
  decide +kernel

theorem row060_layer013_checked :
    coverLayerCheck row060.height row060.goods { lower := 28999680, upper := 57999360, M := 7 } = true := by
  decide +kernel

theorem row060_layer014_checked :
    coverLayerCheck row060.height row060.goods { lower := 57999360, upper := 115998720, M := 7 } = true := by
  decide +kernel

theorem row060_layer015_checked :
    coverLayerCheck row060.height row060.goods { lower := 115998720, upper := 231997440, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer015_checked
