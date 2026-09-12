import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row094Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row094_layer008_checked :
    coverLayerCheck row094.height row094.goods { lower := 2237952, upper := 4475904, M := 5 } = true := by
  decide +kernel

theorem row094_layer009_checked :
    coverLayerCheck row094.height row094.goods { lower := 4475904, upper := 8951808, M := 4 } = true := by
  decide +kernel

theorem row094_layer010_checked :
    coverLayerCheck row094.height row094.goods { lower := 8951808, upper := 17903616, M := 3 } = true := by
  decide +kernel

theorem row094_layer011_checked :
    coverLayerCheck row094.height row094.goods { lower := 17903616, upper := 35807232, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row094_layer011_checked
