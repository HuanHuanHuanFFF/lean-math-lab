import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row071.Layer000PairBlock008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row071_layer000_chunks_eq : row071_layer000_chunks.flatten = row071_layer000_intervals := by
  rfl

theorem row071_layer000_pairs : pairCoverCheck row071_layer000_intervals row071_bounds = true := by
  apply pairCoverCheck_of_chunks row071_layer000_chunks_eq
  intro block hblock
  simp only [row071_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row071_layer000_pairs000
  · exact row071_layer000_pairs001
  · exact row071_layer000_pairs002
  · exact row071_layer000_pairs003
  · exact row071_layer000_pairs004
  · exact row071_layer000_pairs005
  · exact row071_layer000_pairs006
  · exact row071_layer000_pairs007
  · exact row071_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row071_layer000_pairs
