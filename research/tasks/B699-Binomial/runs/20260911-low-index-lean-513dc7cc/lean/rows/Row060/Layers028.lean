import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row060Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row060_layer028_checked :
    coverLayerCheck row060.height row060.goods { lower := 950261514240, upper := 1900523028480, M := 2 } = true := by
  decide +kernel

theorem row060_layer029_checked :
    coverLayerCheck row060.height row060.goods { lower := 1900523028480, upper := 3801046056960, M := 2 } = true := by
  decide +kernel

theorem row060_layer030_checked :
    coverLayerCheck row060.height row060.goods { lower := 3801046056960, upper := 7602092113920, M := 1 } = true := by
  decide +kernel

theorem row060_layer031_checked :
    coverLayerCheck row060.height row060.goods { lower := 7602092113920, upper := 10000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row060_layer031_checked
