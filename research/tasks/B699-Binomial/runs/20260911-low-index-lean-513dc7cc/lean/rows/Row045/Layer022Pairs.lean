import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row045.Layer022PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer022_chunks_eq : row045_layer022_chunks.flatten = row045_layer022_intervals := by
  rfl

theorem row045_layer022_pairs : pairCoverCheck row045_layer022_intervals row045_bounds = true := by
  apply pairCoverCheck_of_chunks row045_layer022_chunks_eq
  intro block hblock
  simp only [row045_layer022_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row045_layer022_pairs000
  · exact row045_layer022_pairs001
  · exact row045_layer022_pairs002
  · exact row045_layer022_pairs003
  · exact row045_layer022_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer022_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer022_pairs
