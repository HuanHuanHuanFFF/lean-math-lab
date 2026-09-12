import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row050.Layer005PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row050_layer005_chunks_eq : row050_layer005_chunks.flatten = row050_layer005_intervals := by
  rfl

theorem row050_layer005_pairs : pairCoverCheck row050_layer005_intervals row050_bounds = true := by
  apply pairCoverCheck_of_chunks row050_layer005_chunks_eq
  intro block hblock
  simp only [row050_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row050_layer005_pairs000
  · exact row050_layer005_pairs001
  · exact row050_layer005_pairs002
  · exact row050_layer005_pairs003
  · exact row050_layer005_pairs004
  · exact row050_layer005_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row050_layer005_pairs
