import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer034PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer034PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer034PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer034PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer034PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer034_chunks_eq : row035_layer034_chunks.flatten = row035_layer034_intervals := by
  rfl

theorem row035_layer034_pairs : pairCoverCheck row035_layer034_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer034_chunks_eq
  intro block hblock
  simp only [row035_layer034_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer034_pairs000
  · exact row035_layer034_pairs001
  · exact row035_layer034_pairs002
  · exact row035_layer034_pairs003
  · exact row035_layer034_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer034_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer034_pairs
