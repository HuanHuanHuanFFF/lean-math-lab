import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_checked :
    coverLayerCheck row055.height row055.goods { lower := 760320, upper := 1520640, M := 17 } = true := by
  exact coverLayerCheck_of_parts row055_layer008_arithmetic row055_layer008_enumeration row055_bounds_eq row055_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_checked
