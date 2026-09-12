import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer028Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer028Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer028Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer028_checked :
    coverLayerCheck row044.height row044.goods { lower := 507879882752, upper := 1015759765504, M := 28 } = true := by
  exact coverLayerCheck_of_parts row044_layer028_arithmetic row044_layer028_enumeration row044_bounds_eq row044_layer028_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer028_checked
