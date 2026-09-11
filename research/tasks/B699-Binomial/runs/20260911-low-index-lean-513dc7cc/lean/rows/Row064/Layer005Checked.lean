import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer005Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer005Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer005Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_checked :
    coverLayerCheck row064.height row064.goods { lower := 129024, upper := 258048, M := 17 } = true := by
  exact coverLayerCheck_of_parts row064_layer005_arithmetic row064_layer005_enumeration row064_bounds_eq row064_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_checked
