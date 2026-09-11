import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer094Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer094Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer094Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer094_checked :
    coverLayerCheck row035.height row035.goods { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer094_arithmetic row035_layer094_enumeration row035_bounds_eq row035_layer094_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_checked
