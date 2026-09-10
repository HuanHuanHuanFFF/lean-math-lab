import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer139Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer139Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer139Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer139_checked :
    coverLayerCheck row035.height row035.goods { lower := 829308962070357548075859523264110943503646720, upper := 1658617924140715096151719046528221887007293440, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer139_arithmetic row035_layer139_enumeration row035_bounds_eq row035_layer139_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer139_checked
