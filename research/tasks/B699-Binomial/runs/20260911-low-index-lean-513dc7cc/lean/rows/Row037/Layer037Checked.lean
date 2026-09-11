import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer037Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer037Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer037Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer037_checked :
    coverLayerCheck row037.height row037.goods { lower := 183068686024704, upper := 366137372049408, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer037_arithmetic row037_layer037_enumeration row037_bounds_eq row037_layer037_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_checked
