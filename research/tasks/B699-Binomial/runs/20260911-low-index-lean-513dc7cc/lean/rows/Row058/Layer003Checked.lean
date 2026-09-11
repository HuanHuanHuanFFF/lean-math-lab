import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer003Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer003Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer003Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer003_checked :
    coverLayerCheck row058.height row058.goods { lower := 26448, upper := 52896, M := 18 } = true := by
  exact coverLayerCheck_of_parts row058_layer003_arithmetic row058_layer003_enumeration row058_bounds_eq row058_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer003_checked
