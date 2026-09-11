import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer004Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer004Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer004Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_checked :
    coverLayerCheck row063.height row063.goods { lower := 62496, upper := 124992, M := 22 } = true := by
  exact coverLayerCheck_of_parts row063_layer004_arithmetic row063_layer004_enumeration row063_bounds_eq row063_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_checked
