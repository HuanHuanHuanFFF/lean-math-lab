import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer133Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer133Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer133Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer133_checked :
    coverLayerCheck row035.height row035.goods { lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer133_arithmetic row035_layer133_enumeration row035_bounds_eq row035_layer133_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_checked
