import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer007Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer007Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer007Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer007_checked :
    coverLayerCheck row048.height row048.goods { lower := 288768, upper := 577536, M := 35 } = true := by
  exact coverLayerCheck_of_parts row048_layer007_arithmetic row048_layer007_enumeration row048_bounds_eq row048_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer007_checked
