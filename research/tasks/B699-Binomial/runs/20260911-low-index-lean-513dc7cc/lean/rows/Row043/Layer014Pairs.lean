import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer014PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer014PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer014PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer014PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer014PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer014_chunks_eq : row043_layer014_chunks.flatten = row043_layer014_intervals := by
  rfl

theorem row043_layer014_pairs : pairCoverCheck row043_layer014_intervals row043_bounds = true := by
  apply pairCoverCheck_of_chunks row043_layer014_chunks_eq
  intro block hblock
  simp only [row043_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row043_layer014_pairs000
  · exact row043_layer014_pairs001
  · exact row043_layer014_pairs002
  · exact row043_layer014_pairs003
  · exact row043_layer014_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer014_pairs
