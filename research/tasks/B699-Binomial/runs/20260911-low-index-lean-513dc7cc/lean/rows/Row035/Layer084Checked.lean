import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer084Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer084Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer084Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer084_checked :
    coverLayerCheck row035.height row035.goods { lower := 23017947605462539486405591040, upper := 46035895210925078972811182080, M := 6 } = true := by
  exact coverLayerCheck_of_parts row035_layer084_arithmetic row035_layer084_enumeration row035_bounds_eq row035_layer084_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer084_checked
