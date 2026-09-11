import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer114Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer114Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer114Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer114_checked :
    coverLayerCheck row035.height row035.goods { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer114_arithmetic row035_layer114_enumeration row035_bounds_eq row035_layer114_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_checked
