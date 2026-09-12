import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layer009PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layer009PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layer009PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layer009PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074.Layer009PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer009_chunks_eq : row074_layer009_chunks.flatten = row074_layer009_intervals := by
  rfl

theorem row074_layer009_pairs : pairCoverCheck row074_layer009_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer009_chunks_eq
  intro block hblock
  simp only [row074_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row074_layer009_pairs000
  · exact row074_layer009_pairs001
  · exact row074_layer009_pairs002
  · exact row074_layer009_pairs003
  · exact row074_layer009_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer009_pairs
