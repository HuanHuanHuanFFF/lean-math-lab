import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer021Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer021Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer021Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer021_checked :
    coverLayerCheck row038.height row038.goods { lower := 2948595712, upper := 5897191424, M := 26 } = true := by
  exact coverLayerCheck_of_parts row038_layer021_arithmetic row038_layer021_enumeration row038_bounds_eq row038_layer021_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer021_checked
