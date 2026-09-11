import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row036Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row036_layer044_checked :
    coverLayerCheck row036.height row036.goods { lower := 22166154415964160, upper := 44332308831928320, M := 5 } = true := by
  decide +kernel

theorem row036_layer045_checked :
    coverLayerCheck row036.height row036.goods { lower := 44332308831928320, upper := 88664617663856640, M := 5 } = true := by
  decide +kernel

theorem row036_layer046_checked :
    coverLayerCheck row036.height row036.goods { lower := 88664617663856640, upper := 177329235327713280, M := 4 } = true := by
  decide +kernel

theorem row036_layer047_checked :
    coverLayerCheck row036.height row036.goods { lower := 177329235327713280, upper := 354658470655426560, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row036_layer047_checked
