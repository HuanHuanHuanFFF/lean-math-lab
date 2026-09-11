import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layer000Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layer000Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row057.Layer000Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row057_layer000_checked :
    coverLayerCheck row057.height row057.goods { lower := 3192, upper := 6384, M := 29 } = true := by
  exact coverLayerCheck_of_parts row057_layer000_arithmetic row057_layer000_enumeration row057_bounds_eq row057_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row057_layer000_checked
