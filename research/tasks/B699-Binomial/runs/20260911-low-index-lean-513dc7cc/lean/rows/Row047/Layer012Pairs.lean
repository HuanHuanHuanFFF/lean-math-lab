import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer012PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer012PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer012PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer012PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047.Layer012PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_chunks_eq : row047_layer012_chunks.flatten = row047_layer012_intervals := by
  rfl

theorem row047_layer012_pairs : pairCoverCheck row047_layer012_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer012_chunks_eq
  intro block hblock
  simp only [row047_layer012_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row047_layer012_pairs000
  · exact row047_layer012_pairs001
  · exact row047_layer012_pairs002
  · exact row047_layer012_pairs003
  · exact row047_layer012_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs
