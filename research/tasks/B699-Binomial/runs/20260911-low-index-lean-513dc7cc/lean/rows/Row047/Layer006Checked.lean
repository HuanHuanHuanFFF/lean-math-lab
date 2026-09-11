import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer006Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer006Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer006Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer006_checked :
    coverLayerCheck row047.height row047.goods { lower := 138368, upper := 276736, M := 22 } = true := by
  exact coverLayerCheck_of_parts row047_layer006_arithmetic row047_layer006_enumeration row047_bounds_eq row047_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_checked
