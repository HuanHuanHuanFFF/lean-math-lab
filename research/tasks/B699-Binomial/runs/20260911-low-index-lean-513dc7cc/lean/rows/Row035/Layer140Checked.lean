import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer140Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer140Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer140Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer140_checked :
    coverLayerCheck row035.height row035.goods { lower := 1658617924140715096151719046528221887007293440, upper := 3317235848281430192303438093056443774014586880, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer140_arithmetic row035_layer140_enumeration row035_bounds_eq row035_layer140_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer140_checked
