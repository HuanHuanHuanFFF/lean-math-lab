import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer115Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer115Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer115Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer115_checked :
    coverLayerCheck row035.height row035.goods { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer115_arithmetic row035_layer115_enumeration row035_bounds_eq row035_layer115_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_checked
