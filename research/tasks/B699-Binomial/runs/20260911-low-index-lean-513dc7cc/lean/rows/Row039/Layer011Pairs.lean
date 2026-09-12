import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row039.Layer011PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row039.Layer011PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row039.Layer011PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row039.Layer011PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row039.Layer011PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row039_layer011_chunks_eq : row039_layer011_chunks.flatten = row039_layer011_intervals := by
  rfl

theorem row039_layer011_pairs : pairCoverCheck row039_layer011_intervals row039_bounds = true := by
  apply pairCoverCheck_of_chunks row039_layer011_chunks_eq
  intro block hblock
  simp only [row039_layer011_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row039_layer011_pairs000
  · exact row039_layer011_pairs001
  · exact row039_layer011_pairs002
  · exact row039_layer011_pairs003
  · exact row039_layer011_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer011_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row039_layer011_pairs
