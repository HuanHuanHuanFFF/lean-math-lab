import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer014Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer014Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer014Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_checked :
    coverLayerCheck row049.height row049.goods { lower := 38535168, upper := 77070336, M := 20 } = true := by
  exact coverLayerCheck_of_parts row049_layer014_arithmetic row049_layer014_enumeration row049_bounds_eq row049_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_checked
