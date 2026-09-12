import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block399
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block400

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_pairs : pairCoverCheck row035_layer112_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_checked :
    coverLayerCheck row035.height row035.goods { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer112_arithmetic row035_layer112_enumeration row035_bounds_eq row035_layer112_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_checked
