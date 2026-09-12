import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076.Layer007PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_chunks_eq : row076_layer007_chunks.flatten = row076_layer007_intervals := by
  rfl

theorem row076_layer007_pairs : pairCoverCheck row076_layer007_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer007_chunks_eq
  intro block hblock
  simp only [row076_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row076_layer007_pairs000
  · exact row076_layer007_pairs001
  · exact row076_layer007_pairs002
  · exact row076_layer007_pairs003
  · exact row076_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs
