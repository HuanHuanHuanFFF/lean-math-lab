import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer003Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer003Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer003Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer003_checked :
    coverLayerCheck row051.height row051.goods { lower := 20400, upper := 40800, M := 26 } = true := by
  exact coverLayerCheck_of_parts row051_layer003_arithmetic row051_layer003_enumeration row051_bounds_eq row051_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer003_checked
