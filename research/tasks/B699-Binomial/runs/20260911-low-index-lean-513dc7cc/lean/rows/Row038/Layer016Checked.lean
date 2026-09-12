import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer016Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer016Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer016Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer016_checked :
    coverLayerCheck row038.height row038.goods { lower := 92143616, upper := 184287232, M := 29 } = true := by
  exact coverLayerCheck_of_parts row038_layer016_arithmetic row038_layer016_enumeration row038_bounds_eq row038_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer016_checked
