import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer013Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer013Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer013Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer013_checked :
    coverLayerCheck row044.height row044.goods { lower := 15499264, upper := 30998528, M := 36 } = true := by
  exact coverLayerCheck_of_parts row044_layer013_arithmetic row044_layer013_enumeration row044_bounds_eq row044_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer013_checked
