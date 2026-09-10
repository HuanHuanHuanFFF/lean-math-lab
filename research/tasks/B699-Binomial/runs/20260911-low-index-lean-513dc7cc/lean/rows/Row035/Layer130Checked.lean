import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer130Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer130Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer130Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer130_checked :
    coverLayerCheck row035.height row035.goods { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer130_arithmetic row035_layer130_enumeration row035_bounds_eq row035_layer130_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_checked
