import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row057Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer020_checked :
    coverLayerCheck row057.height row057.goods { lower := 3347054592, upper := 6694109184, M := 3 } = true := by
  decide +kernel

theorem row057_layer021_checked :
    coverLayerCheck row057.height row057.goods { lower := 6694109184, upper := 13388218368, M := 3 } = true := by
  decide +kernel

theorem row057_layer022_checked :
    coverLayerCheck row057.height row057.goods { lower := 13388218368, upper := 26776436736, M := 2 } = true := by
  decide +kernel

theorem row057_layer023_checked :
    coverLayerCheck row057.height row057.goods { lower := 26776436736, upper := 53552873472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer023_checked
