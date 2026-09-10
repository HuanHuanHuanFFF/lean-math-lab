import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer105Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer105Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer105Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer105_checked :
    coverLayerCheck row035.height row035.goods { lower := 48272134856690975608994458060718080, upper := 96544269713381951217988916121436160, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer105_arithmetic row035_layer105_enumeration row035_bounds_eq row035_layer105_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer105_checked
