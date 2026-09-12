import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer015PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer015PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer015PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer015PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049.Layer015PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_chunks_eq : row049_layer015_chunks.flatten = row049_layer015_intervals := by
  rfl

theorem row049_layer015_pairs : pairCoverCheck row049_layer015_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer015_chunks_eq
  intro block hblock
  simp only [row049_layer015_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer015_pairs000
  · exact row049_layer015_pairs001
  · exact row049_layer015_pairs002
  · exact row049_layer015_pairs003
  · exact row049_layer015_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs
