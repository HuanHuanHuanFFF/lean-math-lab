import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer001Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer001Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer001Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer001_checked :
    coverLayerCheck row064.height row064.goods { lower := 8064, upper := 16128, M := 27 } = true := by
  exact coverLayerCheck_of_parts row064_layer001_arithmetic row064_layer001_enumeration row064_bounds_eq row064_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_checked
