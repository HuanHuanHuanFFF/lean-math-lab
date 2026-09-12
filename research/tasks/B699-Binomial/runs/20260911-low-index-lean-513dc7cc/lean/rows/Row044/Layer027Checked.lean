import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer027Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer027Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer027Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer027_checked :
    coverLayerCheck row044.height row044.goods { lower := 253939941376, upper := 507879882752, M := 28 } = true := by
  exact coverLayerCheck_of_parts row044_layer027_arithmetic row044_layer027_enumeration row044_bounds_eq row044_layer027_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer027_checked
