import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layer004Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layer004Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062.Layer004Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_checked :
    coverLayerCheck row062.height row062.goods { lower := 60512, upper := 121024, M := 25 } = true := by
  exact coverLayerCheck_of_parts row062_layer004_arithmetic row062_layer004_enumeration row062_bounds_eq row062_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_checked
