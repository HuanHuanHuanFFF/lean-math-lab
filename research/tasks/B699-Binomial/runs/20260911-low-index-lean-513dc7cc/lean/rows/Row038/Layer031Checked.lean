import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer031Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer031Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer031Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer031_checked :
    coverLayerCheck row038.height row038.goods { lower := 3019362009088, upper := 6038724018176, M := 21 } = true := by
  exact coverLayerCheck_of_parts row038_layer031_arithmetic row038_layer031_enumeration row038_bounds_eq row038_layer031_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer031_checked
