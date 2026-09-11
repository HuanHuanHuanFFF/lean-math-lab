import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer016_checked :
    coverLayerCheck row064.height row064.goods { lower := 264241152, upper := 528482304, M := 5 } = true := by
  decide +kernel

theorem row064_layer017_checked :
    coverLayerCheck row064.height row064.goods { lower := 528482304, upper := 1056964608, M := 4 } = true := by
  decide +kernel

theorem row064_layer018_checked :
    coverLayerCheck row064.height row064.goods { lower := 1056964608, upper := 2113929216, M := 4 } = true := by
  decide +kernel

theorem row064_layer019_checked :
    coverLayerCheck row064.height row064.goods { lower := 2113929216, upper := 4227858432, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer019_checked
