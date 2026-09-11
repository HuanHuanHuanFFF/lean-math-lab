import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row044.Layer030PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer030_chunks_eq : row044_layer030_chunks.flatten = row044_layer030_intervals := by
  rfl

theorem row044_layer030_pairs : pairCoverCheck row044_layer030_intervals row044_bounds = true := by
  apply pairCoverCheck_of_chunks row044_layer030_chunks_eq
  intro block hblock
  simp only [row044_layer030_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row044_layer030_pairs000
  · exact row044_layer030_pairs001
  · exact row044_layer030_pairs002
  · exact row044_layer030_pairs003
  · exact row044_layer030_pairs004
  · exact row044_layer030_pairs005
  · exact row044_layer030_pairs006
  · exact row044_layer030_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer030_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer030_pairs
