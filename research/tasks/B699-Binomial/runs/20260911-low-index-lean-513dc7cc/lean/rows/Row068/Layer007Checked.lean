import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer007Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer007Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068.Layer007Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_checked :
    coverLayerCheck row068.height row068.goods { lower := 583168, upper := 1166336, M := 13 } = true := by
  exact coverLayerCheck_of_parts row068_layer007_arithmetic row068_layer007_enumeration row068_bounds_eq row068_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_checked
