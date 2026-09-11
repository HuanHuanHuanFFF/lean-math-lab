import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer131Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer131Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer131Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer131_checked :
    coverLayerCheck row035.height row035.goods { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer131_arithmetic row035_layer131_enumeration row035_bounds_eq row035_layer131_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_checked
