import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer025Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer025Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer025Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer025_checked :
    coverLayerCheck row048.height row048.goods { lower := 75698798592, upper := 151397597184, M := 19 } = true := by
  exact coverLayerCheck_of_parts row048_layer025_arithmetic row048_layer025_enumeration row048_bounds_eq row048_layer025_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer025_checked
