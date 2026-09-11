import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer122Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer122Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer122Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer122_checked :
    coverLayerCheck row035.height row035.goods { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer122_arithmetic row035_layer122_enumeration row035_bounds_eq row035_layer122_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_checked
