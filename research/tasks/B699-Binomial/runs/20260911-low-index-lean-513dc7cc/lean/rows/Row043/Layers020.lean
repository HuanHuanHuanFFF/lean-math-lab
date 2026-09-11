import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row043Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer020_checked :
    coverLayerCheck row043.height row043.goods { lower := 1893728256, upper := 3787456512, M := 11 } = true := by
  decide +kernel

theorem row043_layer021_checked :
    coverLayerCheck row043.height row043.goods { lower := 3787456512, upper := 7574913024, M := 11 } = true := by
  decide +kernel

theorem row043_layer022_checked :
    coverLayerCheck row043.height row043.goods { lower := 7574913024, upper := 15149826048, M := 10 } = true := by
  decide +kernel

theorem row043_layer023_checked :
    coverLayerCheck row043.height row043.goods { lower := 15149826048, upper := 30299652096, M := 10 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer023_checked
