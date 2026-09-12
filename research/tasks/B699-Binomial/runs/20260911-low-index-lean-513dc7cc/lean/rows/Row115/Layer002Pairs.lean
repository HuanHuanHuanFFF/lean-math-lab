import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115.Layer002PairBlock013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_chunks_eq : row115_layer002_chunks.flatten = row115_layer002_intervals := by
  rfl

theorem row115_layer002_pairs : pairCoverCheck row115_layer002_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer002_chunks_eq
  intro block hblock
  simp only [row115_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row115_layer002_pairs000
  · exact row115_layer002_pairs001
  · exact row115_layer002_pairs002
  · exact row115_layer002_pairs003
  · exact row115_layer002_pairs004
  · exact row115_layer002_pairs005
  · exact row115_layer002_pairs006
  · exact row115_layer002_pairs007
  · exact row115_layer002_pairs008
  · exact row115_layer002_pairs009
  · exact row115_layer002_pairs010
  · exact row115_layer002_pairs011
  · exact row115_layer002_pairs012
  · exact row115_layer002_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs
