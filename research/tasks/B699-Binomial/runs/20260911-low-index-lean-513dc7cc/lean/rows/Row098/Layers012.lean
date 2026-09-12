import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row098Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer012_checked :
    coverLayerCheck row098.height row098.goods { lower := 38936576, upper := 77873152, M := 2 } = true := by
  decide +kernel

theorem row098_layer013_checked :
    coverLayerCheck row098.height row098.goods { lower := 77873152, upper := 155746304, M := 2 } = true := by
  decide +kernel

theorem row098_layer014_checked :
    coverLayerCheck row098.height row098.goods { lower := 155746304, upper := 311492608, M := 2 } = true := by
  decide +kernel

theorem row098_layer015_checked :
    coverLayerCheck row098.height row098.goods { lower := 311492608, upper := 622985216, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer015_checked
