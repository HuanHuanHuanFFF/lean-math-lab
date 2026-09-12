import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_chunks_eq : row035_layer000_chunks.flatten = row035_layer000_intervals := by
  rfl

theorem row035_layer000_pairs : pairCoverCheck row035_layer000_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer000_chunks_eq
  intro block hblock
  simp only [row035_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer000_pairs000
  · exact row035_layer000_pairs001
  · exact row035_layer000_pairs002
  · exact row035_layer000_pairs003
  · exact row035_layer000_pairs004
  · exact row035_layer000_pairs005
  · exact row035_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer000_checked :
    coverLayerCheck row035.height row035.goods { lower := 1190, upper := 2380, M := 38 } = true := by
  exact coverLayerCheck_of_parts row035_layer000_arithmetic row035_layer000_enumeration row035_bounds_eq row035_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_checked
