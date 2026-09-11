import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer000Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer000Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer000Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer000_checked :
    coverLayerCheck row053.height row053.goods { lower := 2756, upper := 5512, M := 29 } = true := by
  exact coverLayerCheck_of_parts row053_layer000_arithmetic row053_layer000_enumeration row053_bounds_eq row053_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer000_checked
