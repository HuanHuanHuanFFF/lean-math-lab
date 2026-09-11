import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer007Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer007Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063.Layer007Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_checked :
    coverLayerCheck row063.height row063.goods { lower := 499968, upper := 999936, M := 16 } = true := by
  exact coverLayerCheck_of_parts row063_layer007_arithmetic row063_layer007_enumeration row063_bounds_eq row063_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_checked
