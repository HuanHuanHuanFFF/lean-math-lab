import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035.Layer003PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_chunks_eq : row035_layer003_chunks.flatten = row035_layer003_intervals := by
  rfl

theorem row035_layer003_pairs : pairCoverCheck row035_layer003_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer003_chunks_eq
  intro block hblock
  simp only [row035_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer003_pairs000
  · exact row035_layer003_pairs001
  · exact row035_layer003_pairs002
  · exact row035_layer003_pairs003
  · exact row035_layer003_pairs004
  · exact row035_layer003_pairs005
  · exact row035_layer003_pairs006
  · exact row035_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs
