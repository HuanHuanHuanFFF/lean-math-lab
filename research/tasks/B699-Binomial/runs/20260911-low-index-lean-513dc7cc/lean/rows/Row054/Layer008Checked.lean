import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer008Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer008Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer008Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_checked :
    coverLayerCheck row054.height row054.goods { lower := 732672, upper := 1465344, M := 20 } = true := by
  exact coverLayerCheck_of_parts row054_layer008_arithmetic row054_layer008_enumeration row054_bounds_eq row054_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_checked
