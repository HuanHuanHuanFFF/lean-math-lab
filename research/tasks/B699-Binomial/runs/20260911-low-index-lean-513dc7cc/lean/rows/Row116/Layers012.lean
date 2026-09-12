import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row116Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row116_layer012_checked :
    coverLayerCheck row116.height row116.goods { lower := 54640640, upper := 109281280, M := 3 } = true := by
  decide +kernel

theorem row116_layer013_checked :
    coverLayerCheck row116.height row116.goods { lower := 109281280, upper := 218562560, M := 3 } = true := by
  decide +kernel

theorem row116_layer014_checked :
    coverLayerCheck row116.height row116.goods { lower := 218562560, upper := 437125120, M := 2 } = true := by
  decide +kernel

theorem row116_layer015_checked :
    coverLayerCheck row116.height row116.goods { lower := 437125120, upper := 874250240, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row116_layer015_checked
