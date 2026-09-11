import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer086Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer086Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer086Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer086_checked :
    coverLayerCheck row035.height row035.goods { lower := 92071790421850157945622364160, upper := 184143580843700315891244728320, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer086_arithmetic row035_layer086_enumeration row035_bounds_eq row035_layer086_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer086_checked
