import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block149
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block150
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block151
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block148

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_chunks_eq : row035_layer023_chunks.flatten = row035_layer023_intervals := by
  rfl

theorem row035_layer023_pairs : pairCoverCheck row035_layer023_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer023_chunks_eq
  intro block hblock
  simp only [row035_layer023_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer023_pairs000
  · exact row035_layer023_pairs001
  · exact row035_layer023_pairs002
  · exact row035_layer023_pairs003
  · exact row035_layer023_pairs004
  · exact row035_layer023_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_checked :
    coverLayerCheck row035.height row035.goods { lower := 9982443520, upper := 19964887040, M := 22 } = true := by
  exact coverLayerCheck_of_parts row035_layer023_arithmetic row035_layer023_enumeration row035_bounds_eq row035_layer023_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_checked
