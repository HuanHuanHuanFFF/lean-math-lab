import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109.Layer005PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer005_chunks_eq : row109_layer005_chunks.flatten = row109_layer005_intervals := by
  rfl

theorem row109_layer005_pairs : pairCoverCheck row109_layer005_intervals row109_bounds = true := by
  apply pairCoverCheck_of_chunks row109_layer005_chunks_eq
  intro block hblock
  simp only [row109_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row109_layer005_pairs000
  · exact row109_layer005_pairs001
  · exact row109_layer005_pairs002
  · exact row109_layer005_pairs003
  · exact row109_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer005_pairs
