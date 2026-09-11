import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer011Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer011Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037.Layer011Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer011_checked :
    coverLayerCheck row037.height row037.goods { lower := 2727936, upper := 5455872, M := 14 } = true := by
  exact coverLayerCheck_of_parts row037_layer011_arithmetic row037_layer011_enumeration row037_bounds_eq row037_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_checked
