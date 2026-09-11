import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer001Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer001Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer001Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer001_checked :
    coverLayerCheck row050.height row050.goods { lower := 4900, upper := 9800, M := 34 } = true := by
  exact coverLayerCheck_of_parts row050_layer001_arithmetic row050_layer001_enumeration row050_bounds_eq row050_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer001_checked
