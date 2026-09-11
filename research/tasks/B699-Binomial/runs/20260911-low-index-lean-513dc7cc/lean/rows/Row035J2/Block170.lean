import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block167
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block168
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block169
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block166

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_chunks_eq : row035_layer027_chunks.flatten = row035_layer027_intervals := by
  rfl

theorem row035_layer027_pairs : pairCoverCheck row035_layer027_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer027_chunks_eq
  intro block hblock
  simp only [row035_layer027_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer027_pairs000
  · exact row035_layer027_pairs001
  · exact row035_layer027_pairs002
  · exact row035_layer027_pairs003
  · exact row035_layer027_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_checked :
    coverLayerCheck row035.height row035.goods { lower := 159719096320, upper := 319438192640, M := 20 } = true := by
  exact coverLayerCheck_of_parts row035_layer027_arithmetic row035_layer027_enumeration row035_bounds_eq row035_layer027_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_checked
