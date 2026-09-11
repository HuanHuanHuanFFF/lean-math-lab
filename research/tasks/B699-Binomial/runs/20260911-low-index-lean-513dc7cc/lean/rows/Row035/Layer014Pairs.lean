import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer014PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_chunks_eq : row035_layer014_chunks.flatten = row035_layer014_intervals := by
  rfl

theorem row035_layer014_pairs : pairCoverCheck row035_layer014_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer014_chunks_eq
  intro block hblock
  simp only [row035_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer014_pairs000
  · exact row035_layer014_pairs001
  · exact row035_layer014_pairs002
  · exact row035_layer014_pairs003
  · exact row035_layer014_pairs004
  · exact row035_layer014_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs
