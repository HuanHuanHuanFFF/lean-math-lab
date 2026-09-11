import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer147Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer147Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer147Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer147_checked :
    coverLayerCheck row035.height row035.goods { lower := 212303094290011532307420037955612401536933560320, upper := 424606188580023064614840075911224803073867120640, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer147_arithmetic row035_layer147_enumeration row035_bounds_eq row035_layer147_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer147_checked
