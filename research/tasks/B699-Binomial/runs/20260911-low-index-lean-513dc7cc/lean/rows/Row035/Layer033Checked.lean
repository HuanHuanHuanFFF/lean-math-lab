import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer033Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer033Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer033Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer033_checked :
    coverLayerCheck row035.height row035.goods { lower := 10222022164480, upper := 20444044328960, M := 18 } = true := by
  exact coverLayerCheck_of_parts row035_layer033_arithmetic row035_layer033_enumeration row035_bounds_eq row035_layer033_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer033_checked
