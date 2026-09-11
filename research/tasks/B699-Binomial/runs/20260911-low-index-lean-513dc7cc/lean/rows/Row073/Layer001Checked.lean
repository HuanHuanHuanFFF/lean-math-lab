import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer001Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer001Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073.Layer001Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_checked :
    coverLayerCheck row073.height row073.goods { lower := 10512, upper := 21024, M := 25 } = true := by
  exact coverLayerCheck_of_parts row073_layer001_arithmetic row073_layer001_enumeration row073_bounds_eq row073_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_checked
