import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer011Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer011Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer011Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer011_checked :
    coverLayerCheck row050.height row050.goods { lower := 5017600, upper := 10035200, M := 18 } = true := by
  exact coverLayerCheck_of_parts row050_layer011_arithmetic row050_layer011_enumeration row050_bounds_eq row050_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer011_checked
