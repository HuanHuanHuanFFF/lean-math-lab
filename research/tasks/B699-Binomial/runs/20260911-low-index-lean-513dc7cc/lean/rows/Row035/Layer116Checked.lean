import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer116Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer116Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer116Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_checked :
    coverLayerCheck row035.height row035.goods { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer116_arithmetic row035_layer116_enumeration row035_bounds_eq row035_layer116_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_checked
