import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer033PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer033PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer033PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer033PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row038.Layer033PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer033_chunks_eq : row038_layer033_chunks.flatten = row038_layer033_intervals := by
  rfl

theorem row038_layer033_pairs : pairCoverCheck row038_layer033_intervals row038_bounds = true := by
  apply pairCoverCheck_of_chunks row038_layer033_chunks_eq
  intro block hblock
  simp only [row038_layer033_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row038_layer033_pairs000
  · exact row038_layer033_pairs001
  · exact row038_layer033_pairs002
  · exact row038_layer033_pairs003
  · exact row038_layer033_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer033_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer033_pairs
