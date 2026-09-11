import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer076Arithmetic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer076Enumeration
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer076Pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer076_checked :
    coverLayerCheck row035.height row035.goods { lower := 89913857833838044868771840, upper := 179827715667676089737543680, M := 7 } = true := by
  exact coverLayerCheck_of_parts row035_layer076_arithmetic row035_layer076_enumeration row035_bounds_eq row035_layer076_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer076_checked
