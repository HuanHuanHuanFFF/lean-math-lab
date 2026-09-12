import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer029Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer029Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer029Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer029_checked :
    coverLayerCheck row045.height row045.goods { lower := 1063004405760, upper := 2126008811520, M := 15 } = true := by
  exact coverLayerCheck_of_parts row045_layer029_arithmetic row045_layer029_enumeration row045_bounds_eq row045_layer029_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer029_checked
