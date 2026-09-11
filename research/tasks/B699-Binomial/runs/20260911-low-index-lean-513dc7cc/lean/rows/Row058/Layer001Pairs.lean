import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row058.Layer001PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row058_layer001_chunks_eq : row058_layer001_chunks.flatten = row058_layer001_intervals := by
  rfl

theorem row058_layer001_pairs : pairCoverCheck row058_layer001_intervals row058_bounds = true := by
  apply pairCoverCheck_of_chunks row058_layer001_chunks_eq
  intro block hblock
  simp only [row058_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row058_layer001_pairs000
  · exact row058_layer001_pairs001
  · exact row058_layer001_pairs002
  · exact row058_layer001_pairs003
  · exact row058_layer001_pairs004
  · exact row058_layer001_pairs005
  · exact row058_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row058_layer001_pairs
