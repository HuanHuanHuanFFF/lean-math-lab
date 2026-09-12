import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer018Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer018Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer018Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer018_checked :
    coverLayerCheck row045.height row045.goods { lower := 519045120, upper := 1038090240, M := 22 } = true := by
  exact coverLayerCheck_of_parts row045_layer018_arithmetic row045_layer018_enumeration row045_bounds_eq row045_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer018_checked
