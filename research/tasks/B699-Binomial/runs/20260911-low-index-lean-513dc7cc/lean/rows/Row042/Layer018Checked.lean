import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layer018Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layer018Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row042.Layer018Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row042_layer018_checked :
    coverLayerCheck row042.height row042.goods { lower := 451411968, upper := 902823936, M := 19 } = true := by
  exact coverLayerCheck_of_parts row042_layer018_arithmetic row042_layer018_enumeration row042_bounds_eq row042_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row042_layer018_checked
