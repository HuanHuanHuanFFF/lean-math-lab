import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row122Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer008_checked :
    coverLayerCheck row122.height row122.goods { lower := 3779072, upper := 7558144, M := 3 } = true := by
  decide +kernel

theorem row122_layer009_checked :
    coverLayerCheck row122.height row122.goods { lower := 7558144, upper := 15116288, M := 3 } = true := by
  decide +kernel

theorem row122_layer010_checked :
    coverLayerCheck row122.height row122.goods { lower := 15116288, upper := 30232576, M := 2 } = true := by
  decide +kernel

theorem row122_layer011_checked :
    coverLayerCheck row122.height row122.goods { lower := 30232576, upper := 60465152, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer011_checked
