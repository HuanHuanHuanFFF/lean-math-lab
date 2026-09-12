import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row051.Layer006PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row051_layer006_chunks_eq : row051_layer006_chunks.flatten = row051_layer006_intervals := by
  rfl

theorem row051_layer006_pairs : pairCoverCheck row051_layer006_intervals row051_bounds = true := by
  apply pairCoverCheck_of_chunks row051_layer006_chunks_eq
  intro block hblock
  simp only [row051_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row051_layer006_pairs000
  · exact row051_layer006_pairs001
  · exact row051_layer006_pairs002
  · exact row051_layer006_pairs003
  · exact row051_layer006_pairs004
  · exact row051_layer006_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row051_layer006_pairs
