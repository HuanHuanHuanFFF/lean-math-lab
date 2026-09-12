import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102.Layer002PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer002_chunks_eq : row102_layer002_chunks.flatten = row102_layer002_intervals := by
  rfl

theorem row102_layer002_pairs : pairCoverCheck row102_layer002_intervals row102_bounds = true := by
  apply pairCoverCheck_of_chunks row102_layer002_chunks_eq
  intro block hblock
  simp only [row102_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row102_layer002_pairs000
  · exact row102_layer002_pairs001
  · exact row102_layer002_pairs002
  · exact row102_layer002_pairs003
  · exact row102_layer002_pairs004
  · exact row102_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer002_pairs
