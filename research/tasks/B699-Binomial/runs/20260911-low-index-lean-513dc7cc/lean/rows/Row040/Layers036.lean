import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row040Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row040_layer036_checked :
    coverLayerCheck row040.height row040.goods { lower := 107202383708160, upper := 214404767416320, M := 4 } = true := by
  decide +kernel

theorem row040_layer037_checked :
    coverLayerCheck row040.height row040.goods { lower := 214404767416320, upper := 428809534832640, M := 4 } = true := by
  decide +kernel

theorem row040_layer038_checked :
    coverLayerCheck row040.height row040.goods { lower := 428809534832640, upper := 857619069665280, M := 3 } = true := by
  decide +kernel

theorem row040_layer039_checked :
    coverLayerCheck row040.height row040.goods { lower := 857619069665280, upper := 1715238139330560, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row040_layer039_checked
