import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer104Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer104Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer104Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer104_checked :
    coverLayerCheck row035.height row035.goods { lower := 24136067428345487804497229030359040, upper := 48272134856690975608994458060718080, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer104_arithmetic row035_layer104_enumeration row035_bounds_eq row035_layer104_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer104_checked
