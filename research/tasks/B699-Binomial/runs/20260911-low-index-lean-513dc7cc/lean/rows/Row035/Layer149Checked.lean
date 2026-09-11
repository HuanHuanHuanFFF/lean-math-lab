import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer149Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer149Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer149Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer149_checked :
    coverLayerCheck row035.height row035.goods { lower := 849212377160046129229680151822449606147734241280, upper := 1698424754320092258459360303644899212295468482560, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer149_arithmetic row035_layer149_enumeration row035_bounds_eq row035_layer149_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer149_checked
