import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row029S.Layer013PairBlock004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029S_layer013_chunks_eq : row029S_layer013_chunks.flatten = row029S_layer013_intervals := by
  rfl

theorem row029S_layer013_pairs : pairCoverCheck row029S_layer013_intervals row029S_bounds = true := by
  apply pairCoverCheck_of_chunks row029S_layer013_chunks_eq
  intro block hblock
  simp only [row029S_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row029S_layer013_pairs000
  · exact row029S_layer013_pairs001
  · exact row029S_layer013_pairs002
  · exact row029S_layer013_pairs003
  · exact row029S_layer013_pairs004

end B699LowIndex.LowIndexLean513dc7cc
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029S_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029S_layer013_pairs
