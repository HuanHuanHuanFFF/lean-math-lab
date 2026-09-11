import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer016Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer016Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer016Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer016_checked :
    coverLayerCheck row048.height row048.goods { lower := 147849216, upper := 295698432, M := 26 } = true := by
  exact coverLayerCheck_of_parts row048_layer016_arithmetic row048_layer016_enumeration row048_bounds_eq row048_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer016_checked
