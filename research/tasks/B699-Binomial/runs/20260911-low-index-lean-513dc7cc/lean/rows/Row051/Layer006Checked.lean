import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_checked :
    coverLayerCheck row051.height row051.goods { lower := 163200, upper := 326400, M := 21 } = true := by
  exact coverLayerCheck_of_parts row051_layer006_arithmetic row051_layer006_enumeration row051_bounds_eq row051_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_checked
