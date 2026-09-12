import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer011Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer011Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer011Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer011_checked :
    coverLayerCheck row038.height row038.goods { lower := 2879488, upper := 5758976, M := 32 } = true := by
  exact coverLayerCheck_of_parts row038_layer011_arithmetic row038_layer011_enumeration row038_bounds_eq row038_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer011_checked
