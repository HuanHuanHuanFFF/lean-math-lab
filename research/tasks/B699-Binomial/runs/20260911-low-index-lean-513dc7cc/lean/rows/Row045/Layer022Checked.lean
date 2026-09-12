import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer022_checked :
    coverLayerCheck row045.height row045.goods { lower := 8304721920, upper := 16609443840, M := 19 } = true := by
  exact coverLayerCheck_of_parts row045_layer022_arithmetic row045_layer022_enumeration row045_bounds_eq row045_layer022_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer022_checked
