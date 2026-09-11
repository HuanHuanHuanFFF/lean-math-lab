import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer002Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer002Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer002Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer002_checked :
    coverLayerCheck row071.height row071.goods { lower := 19880, upper := 39760, M := 18 } = true := by
  exact coverLayerCheck_of_parts row071_layer002_arithmetic row071_layer002_enumeration row071_bounds_eq row071_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer002_checked
