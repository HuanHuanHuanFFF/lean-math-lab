import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114.Layer004PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer004_chunks_eq : row114_layer004_chunks.flatten = row114_layer004_intervals := by
  rfl

theorem row114_layer004_pairs : pairCoverCheck row114_layer004_intervals row114_bounds = true := by
  apply pairCoverCheck_of_chunks row114_layer004_chunks_eq
  intro block hblock
  simp only [row114_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row114_layer004_pairs000
  · exact row114_layer004_pairs001
  · exact row114_layer004_pairs002
  · exact row114_layer004_pairs003
  · exact row114_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer004_pairs
