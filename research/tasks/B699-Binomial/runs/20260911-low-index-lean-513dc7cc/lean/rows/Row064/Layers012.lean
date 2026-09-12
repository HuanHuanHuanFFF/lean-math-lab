import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer012_checked :
    coverLayerCheck row064.height row064.goods { lower := 16515072, upper := 33030144, M := 8 } = true := by
  decide +kernel

theorem row064_layer013_checked :
    coverLayerCheck row064.height row064.goods { lower := 33030144, upper := 66060288, M := 7 } = true := by
  decide +kernel

theorem row064_layer014_checked :
    coverLayerCheck row064.height row064.goods { lower := 66060288, upper := 132120576, M := 6 } = true := by
  decide +kernel

theorem row064_layer015_checked :
    coverLayerCheck row064.height row064.goods { lower := 132120576, upper := 264241152, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer015_checked
