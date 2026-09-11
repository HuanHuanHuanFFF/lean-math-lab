import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row125Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row125_layer008_checked :
    coverLayerCheck row125.height row125.goods { lower := 3968000, upper := 7936000, M := 2 } = true := by
  decide +kernel

theorem row125_layer009_checked :
    coverLayerCheck row125.height row125.goods { lower := 7936000, upper := 15872000, M := 2 } = true := by
  decide +kernel

theorem row125_layer010_checked :
    coverLayerCheck row125.height row125.goods { lower := 15872000, upper := 31744000, M := 2 } = true := by
  decide +kernel

theorem row125_layer011_checked :
    coverLayerCheck row125.height row125.goods { lower := 31744000, upper := 63488000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row125_layer011_checked
