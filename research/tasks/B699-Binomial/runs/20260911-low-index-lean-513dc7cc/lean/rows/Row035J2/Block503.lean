import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block501
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block502

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_pairs : pairCoverCheck row035_layer151_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer151_checked :
    coverLayerCheck row035.height row035.goods { lower := 3396849508640184516918720607289798424590936965120, upper := 6793699017280369033837441214579596849181873930240, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer151_arithmetic row035_layer151_enumeration row035_bounds_eq row035_layer151_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer151_checked
