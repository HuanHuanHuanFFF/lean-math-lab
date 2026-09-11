import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer000Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer000Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer000Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_checked :
    coverLayerCheck row073.height row073.goods { lower := 5256, upper := 10512, M := 29 } = true := by
  exact coverLayerCheck_of_parts row073_layer000_arithmetic row073_layer000_enumeration row073_bounds_eq row073_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_checked
