import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113.Layer001PairBlock016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_chunks_eq : row113_layer001_chunks.flatten = row113_layer001_intervals := by
  rfl

theorem row113_layer001_pairs : pairCoverCheck row113_layer001_intervals row113_bounds = true := by
  apply pairCoverCheck_of_chunks row113_layer001_chunks_eq
  intro block hblock
  simp only [row113_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row113_layer001_pairs000
  · exact row113_layer001_pairs001
  · exact row113_layer001_pairs002
  · exact row113_layer001_pairs003
  · exact row113_layer001_pairs004
  · exact row113_layer001_pairs005
  · exact row113_layer001_pairs006
  · exact row113_layer001_pairs007
  · exact row113_layer001_pairs008
  · exact row113_layer001_pairs009
  · exact row113_layer001_pairs010
  · exact row113_layer001_pairs011
  · exact row113_layer001_pairs012
  · exact row113_layer001_pairs013
  · exact row113_layer001_pairs014
  · exact row113_layer001_pairs015
  · exact row113_layer001_pairs016

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs
