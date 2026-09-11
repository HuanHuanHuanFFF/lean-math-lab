import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer001Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer001Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer001Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer001_checked :
    coverLayerCheck row068.height row068.goods { lower := 9112, upper := 18224, M := 27 } = true := by
  exact coverLayerCheck_of_parts row068_layer001_arithmetic row068_layer001_enumeration row068_bounds_eq row068_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_checked
