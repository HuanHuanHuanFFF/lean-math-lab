import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row055.Layer008PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row055_layer008_chunks_eq : row055_layer008_chunks.flatten = row055_layer008_intervals := by
  rfl

theorem row055_layer008_pairs : pairCoverCheck row055_layer008_intervals row055_bounds = true := by
  apply pairCoverCheck_of_chunks row055_layer008_chunks_eq
  intro block hblock
  simp only [row055_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row055_layer008_pairs000
  · exact row055_layer008_pairs001
  · exact row055_layer008_pairs002
  · exact row055_layer008_pairs003
  · exact row055_layer008_pairs004
  · exact row055_layer008_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row055_layer008_pairs
