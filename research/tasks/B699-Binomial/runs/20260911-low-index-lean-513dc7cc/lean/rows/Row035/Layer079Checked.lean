import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer079Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer079Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer079Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer079_checked :
    coverLayerCheck row035.height row035.goods { lower := 719310862670704358950174720, upper := 1438621725341408717900349440, M := 6 } = true := by
  exact coverLayerCheck_of_parts row035_layer079_arithmetic row035_layer079_enumeration row035_bounds_eq row035_layer079_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer079_checked
