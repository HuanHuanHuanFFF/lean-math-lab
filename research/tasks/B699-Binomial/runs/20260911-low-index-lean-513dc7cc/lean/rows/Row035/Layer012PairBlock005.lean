import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer012Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer012_pairs005 :
    row035_layer012_block005.all (fun I => row035_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer012_pairs005
