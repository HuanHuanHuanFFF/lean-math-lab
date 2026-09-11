import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row150Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row150_layer008_checked :
    coverLayerCheck row150.height row150.goods { lower := 5721600, upper := 11443200, M := 2 } = true := by
  decide +kernel

theorem row150_layer009_checked :
    coverLayerCheck row150.height row150.goods { lower := 11443200, upper := 22886400, M := 2 } = true := by
  decide +kernel

theorem row150_layer010_checked :
    coverLayerCheck row150.height row150.goods { lower := 22886400, upper := 45772800, M := 1 } = true := by
  decide +kernel

theorem row150_layer011_checked :
    coverLayerCheck row150.height row150.goods { lower := 45772800, upper := 91545600, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row150_layer011_checked
