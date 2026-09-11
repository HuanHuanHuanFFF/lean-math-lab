import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer152Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer152Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer152Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer152_checked :
    coverLayerCheck row035.height row035.goods { lower := 6793699017280369033837441214579596849181873930240, upper := 10000000000000000000000000000000000000000000000000, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer152_arithmetic row035_layer152_enumeration row035_bounds_eq row035_layer152_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer152_checked
