import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layer008Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layer008Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052.Layer008Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_checked :
    coverLayerCheck row052.height row052.goods { lower := 678912, upper := 1357824, M := 15 } = true := by
  exact coverLayerCheck_of_parts row052_layer008_arithmetic row052_layer008_enumeration row052_bounds_eq row052_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_checked
