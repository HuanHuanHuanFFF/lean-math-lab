import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer118Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer118Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer118Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer118_checked :
    coverLayerCheck row035.height row035.goods { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer118_arithmetic row035_layer118_enumeration row035_bounds_eq row035_layer118_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_checked
