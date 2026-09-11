import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row053.Layer002PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row053_layer002_chunks_eq : row053_layer002_chunks.flatten = row053_layer002_intervals := by
  rfl

theorem row053_layer002_pairs : pairCoverCheck row053_layer002_intervals row053_bounds = true := by
  apply pairCoverCheck_of_chunks row053_layer002_chunks_eq
  intro block hblock
  simp only [row053_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row053_layer002_pairs000
  · exact row053_layer002_pairs001
  · exact row053_layer002_pairs002
  · exact row053_layer002_pairs003
  · exact row053_layer002_pairs004
  · exact row053_layer002_pairs005
  · exact row053_layer002_pairs006
  · exact row053_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row053_layer002_pairs
