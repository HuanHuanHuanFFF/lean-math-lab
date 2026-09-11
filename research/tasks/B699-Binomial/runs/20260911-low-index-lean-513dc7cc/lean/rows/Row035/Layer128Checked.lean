import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer128Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer128Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer128Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_checked :
    coverLayerCheck row035.height row035.goods { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer128_arithmetic row035_layer128_enumeration row035_bounds_eq row035_layer128_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_checked
