import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer091Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer091Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer091Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer091_checked :
    coverLayerCheck row035.height row035.goods { lower := 2946297293499205054259915653120, upper := 5892594586998410108519831306240, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer091_arithmetic row035_layer091_enumeration row035_bounds_eq row035_layer091_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer091_checked
