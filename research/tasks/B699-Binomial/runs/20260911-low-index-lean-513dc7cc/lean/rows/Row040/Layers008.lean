import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer008_checked :
    coverLayerCheck row040.height row040.goods { lower := 399360, upper := 798720, M := 20 } = true := by
  decide +kernel

theorem row040_layer009_checked :
    coverLayerCheck row040.height row040.goods { lower := 798720, upper := 1597440, M := 19 } = true := by
  decide +kernel

theorem row040_layer010_checked :
    coverLayerCheck row040.height row040.goods { lower := 1597440, upper := 3194880, M := 17 } = true := by
  decide +kernel

theorem row040_layer011_checked :
    coverLayerCheck row040.height row040.goods { lower := 3194880, upper := 6389760, M := 16 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer011_checked
