import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layer003Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layer003Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row067.Layer003Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row067_layer003_checked :
    coverLayerCheck row067.height row067.goods { lower := 35376, upper := 70752, M := 16 } = true := by
  exact coverLayerCheck_of_parts row067_layer003_arithmetic row067_layer003_enumeration row067_bounds_eq row067_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row067_layer003_checked
