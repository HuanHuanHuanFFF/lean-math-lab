import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer095Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer095Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer095Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer095_checked :
    coverLayerCheck row035.height row035.goods { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer095_arithmetic row035_layer095_enumeration row035_bounds_eq row035_layer095_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_checked
