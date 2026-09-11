import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer020_checked :
    coverLayerCheck row064.height row064.goods { lower := 4227858432, upper := 8455716864, M := 3 } = true := by
  decide +kernel

theorem row064_layer021_checked :
    coverLayerCheck row064.height row064.goods { lower := 8455716864, upper := 16911433728, M := 3 } = true := by
  decide +kernel

theorem row064_layer022_checked :
    coverLayerCheck row064.height row064.goods { lower := 16911433728, upper := 33822867456, M := 3 } = true := by
  decide +kernel

theorem row064_layer023_checked :
    coverLayerCheck row064.height row064.goods { lower := 33822867456, upper := 67645734912, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer023_checked
