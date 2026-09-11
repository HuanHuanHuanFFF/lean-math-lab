import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer085Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer085Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer085Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer085_checked :
    coverLayerCheck row035.height row035.goods { lower := 46035895210925078972811182080, upper := 92071790421850157945622364160, M := 5 } = true := by
  exact coverLayerCheck_of_parts row035_layer085_arithmetic row035_layer085_enumeration row035_bounds_eq row035_layer085_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer085_checked
