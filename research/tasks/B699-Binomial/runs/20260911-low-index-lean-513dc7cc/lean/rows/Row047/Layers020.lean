import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row047Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer020_checked :
    coverLayerCheck row047.height row047.goods { lower := 2267021312, upper := 4534042624, M := 9 } = true := by
  decide +kernel

theorem row047_layer021_checked :
    coverLayerCheck row047.height row047.goods { lower := 4534042624, upper := 9068085248, M := 8 } = true := by
  decide +kernel

theorem row047_layer022_checked :
    coverLayerCheck row047.height row047.goods { lower := 9068085248, upper := 18136170496, M := 8 } = true := by
  decide +kernel

theorem row047_layer023_checked :
    coverLayerCheck row047.height row047.goods { lower := 18136170496, upper := 36272340992, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer023_checked
