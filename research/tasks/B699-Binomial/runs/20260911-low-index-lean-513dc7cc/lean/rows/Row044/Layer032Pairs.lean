import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer032PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer032_chunks_eq : row044_layer032_chunks.flatten = row044_layer032_intervals := by
  rfl

theorem row044_layer032_pairs : pairCoverCheck row044_layer032_intervals row044_bounds = true := by
  apply pairCoverCheck_of_chunks row044_layer032_chunks_eq
  intro block hblock
  simp only [row044_layer032_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row044_layer032_pairs000
  · exact row044_layer032_pairs001
  · exact row044_layer032_pairs002
  · exact row044_layer032_pairs003
  · exact row044_layer032_pairs004
  · exact row044_layer032_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer032_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer032_pairs
