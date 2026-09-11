import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer005Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer005Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054.Layer005Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_checked :
    coverLayerCheck row054.height row054.goods { lower := 91584, upper := 183168, M := 25 } = true := by
  exact coverLayerCheck_of_parts row054_layer005_arithmetic row054_layer005_enumeration row054_bounds_eq row054_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_checked
