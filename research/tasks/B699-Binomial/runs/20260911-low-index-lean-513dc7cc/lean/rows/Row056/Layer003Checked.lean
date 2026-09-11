import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layer003Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layer003Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row056.Layer003Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row056_layer003_checked :
    coverLayerCheck row056.height row056.goods { lower := 24640, upper := 49280, M := 23 } = true := by
  exact coverLayerCheck_of_parts row056_layer003_arithmetic row056_layer003_enumeration row056_bounds_eq row056_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row056_layer003_checked
