import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row079Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row079_layer012_checked :
    coverLayerCheck row079.height row079.goods { lower := 25239552, upper := 50479104, M := 4 } = true := by
  decide +kernel

theorem row079_layer013_checked :
    coverLayerCheck row079.height row079.goods { lower := 50479104, upper := 100958208, M := 3 } = true := by
  decide +kernel

theorem row079_layer014_checked :
    coverLayerCheck row079.height row079.goods { lower := 100958208, upper := 201916416, M := 3 } = true := by
  decide +kernel

theorem row079_layer015_checked :
    coverLayerCheck row079.height row079.goods { lower := 201916416, upper := 403832832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row079_layer015_checked
