import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer125Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer125Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer125Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer125_checked :
    coverLayerCheck row035.height row035.goods { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer125_arithmetic row035_layer125_enumeration row035_bounds_eq row035_layer125_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_checked
