import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer024_checked :
    coverLayerCheck row064.height row064.goods { lower := 67645734912, upper := 135291469824, M := 2 } = true := by
  decide +kernel

theorem row064_layer025_checked :
    coverLayerCheck row064.height row064.goods { lower := 135291469824, upper := 270582939648, M := 2 } = true := by
  decide +kernel

theorem row064_layer026_checked :
    coverLayerCheck row064.height row064.goods { lower := 270582939648, upper := 541165879296, M := 2 } = true := by
  decide +kernel

theorem row064_layer027_checked :
    coverLayerCheck row064.height row064.goods { lower := 541165879296, upper := 1000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer027_checked
