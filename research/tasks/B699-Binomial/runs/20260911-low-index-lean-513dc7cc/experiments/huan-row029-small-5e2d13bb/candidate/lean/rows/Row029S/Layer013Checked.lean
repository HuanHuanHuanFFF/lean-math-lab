import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029S_layer013_checked :
    coverLayerCheck row029.height row029.goods { lower := 6651904, upper := 13303808, M := 22 } = true := by
  exact coverLayerCheck_of_parts row029S_layer013_arithmetic row029S_layer013_enumeration row029S_bounds_eq row029S_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029S_layer013_checked
