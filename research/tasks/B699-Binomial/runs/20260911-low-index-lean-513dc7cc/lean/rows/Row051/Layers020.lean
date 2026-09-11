import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row051Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer020_checked :
    coverLayerCheck row051.height row051.goods { lower := 2673868800, upper := 5347737600, M := 7 } = true := by
  decide +kernel

theorem row051_layer021_checked :
    coverLayerCheck row051.height row051.goods { lower := 5347737600, upper := 10695475200, M := 6 } = true := by
  decide +kernel

theorem row051_layer022_checked :
    coverLayerCheck row051.height row051.goods { lower := 10695475200, upper := 21390950400, M := 6 } = true := by
  decide +kernel

theorem row051_layer023_checked :
    coverLayerCheck row051.height row051.goods { lower := 21390950400, upper := 42781900800, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer023_checked
