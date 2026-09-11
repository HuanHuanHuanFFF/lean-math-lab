import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row043.Layer013PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row043_layer013_chunks_eq : row043_layer013_chunks.flatten = row043_layer013_intervals := by
  rfl

theorem row043_layer013_pairs : pairCoverCheck row043_layer013_intervals row043_bounds = true := by
  apply pairCoverCheck_of_chunks row043_layer013_chunks_eq
  intro block hblock
  simp only [row043_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row043_layer013_pairs000
  · exact row043_layer013_pairs001
  · exact row043_layer013_pairs002
  · exact row043_layer013_pairs003
  · exact row043_layer013_pairs004
  · exact row043_layer013_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row043_layer013_pairs
