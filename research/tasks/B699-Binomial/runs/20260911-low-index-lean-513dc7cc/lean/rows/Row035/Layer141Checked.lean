import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer141Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer141Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer141Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer141_checked :
    coverLayerCheck row035.height row035.goods { lower := 3317235848281430192303438093056443774014586880, upper := 6634471696562860384606876186112887548029173760, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer141_arithmetic row035_layer141_enumeration row035_bounds_eq row035_layer141_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer141_checked
