import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer136Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer136Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer136Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer136_checked :
    coverLayerCheck row035.height row035.goods { lower := 103663620258794693509482440408013867937955840, upper := 207327240517589387018964880816027735875911680, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer136_arithmetic row035_layer136_enumeration row035_bounds_eq row035_layer136_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer136_checked
