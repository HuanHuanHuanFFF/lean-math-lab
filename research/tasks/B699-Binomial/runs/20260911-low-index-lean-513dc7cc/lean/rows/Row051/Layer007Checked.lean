import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer007Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer007Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer007Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer007_checked :
    coverLayerCheck row051.height row051.goods { lower := 326400, upper := 652800, M := 19 } = true := by
  exact coverLayerCheck_of_parts row051_layer007_arithmetic row051_layer007_enumeration row051_bounds_eq row051_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer007_checked
