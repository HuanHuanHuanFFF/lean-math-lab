import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer050Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer050Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer050Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer050_checked :
    coverLayerCheck row044.height row044.goods { lower := 2130202623746244608, upper := 4260405247492489216, M := 19 } = true := by
  exact coverLayerCheck_of_parts row044_layer050_arithmetic row044_layer050_enumeration row044_bounds_eq row044_layer050_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer050_checked
