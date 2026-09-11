import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer150Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer150Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer150Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer150_checked :
    coverLayerCheck row035.height row035.goods { lower := 1698424754320092258459360303644899212295468482560, upper := 3396849508640184516918720607289798424590936965120, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer150_arithmetic row035_layer150_enumeration row035_bounds_eq row035_layer150_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer150_checked
