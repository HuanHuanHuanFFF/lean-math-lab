import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer127Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer127Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer127Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer127_checked :
    coverLayerCheck row035.height row035.goods { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer127_arithmetic row035_layer127_enumeration row035_bounds_eq row035_layer127_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_checked
