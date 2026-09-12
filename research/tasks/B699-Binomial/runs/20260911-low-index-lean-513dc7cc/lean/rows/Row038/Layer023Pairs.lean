import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer023PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer023_chunks_eq : row038_layer023_chunks.flatten = row038_layer023_intervals := by
  rfl

theorem row038_layer023_pairs : pairCoverCheck row038_layer023_intervals row038_bounds = true := by
  apply pairCoverCheck_of_chunks row038_layer023_chunks_eq
  intro block hblock
  simp only [row038_layer023_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row038_layer023_pairs000
  · exact row038_layer023_pairs001
  · exact row038_layer023_pairs002
  · exact row038_layer023_pairs003
  · exact row038_layer023_pairs004
  · exact row038_layer023_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer023_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer023_pairs
