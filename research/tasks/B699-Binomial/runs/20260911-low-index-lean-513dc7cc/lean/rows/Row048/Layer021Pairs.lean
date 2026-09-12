import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer021PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer021PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer021PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer021PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer021PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer021_chunks_eq : row048_layer021_chunks.flatten = row048_layer021_intervals := by
  rfl

theorem row048_layer021_pairs : pairCoverCheck row048_layer021_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer021_chunks_eq
  intro block hblock
  simp only [row048_layer021_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row048_layer021_pairs000
  · exact row048_layer021_pairs001
  · exact row048_layer021_pairs002
  · exact row048_layer021_pairs003
  · exact row048_layer021_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer021_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer021_pairs
