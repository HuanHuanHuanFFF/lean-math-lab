import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer009Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer009Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer009Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_checked :
    coverLayerCheck row037.height row037.goods { lower := 681984, upper := 1363968, M := 16 } = true := by
  exact coverLayerCheck_of_parts row037_layer009_arithmetic row037_layer009_enumeration row037_bounds_eq row037_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_checked
