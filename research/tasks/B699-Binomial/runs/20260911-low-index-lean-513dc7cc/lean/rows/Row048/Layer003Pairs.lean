import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048.Layer003PairBlock013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_chunks_eq : row048_layer003_chunks.flatten = row048_layer003_intervals := by
  rfl

theorem row048_layer003_pairs : pairCoverCheck row048_layer003_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer003_chunks_eq
  intro block hblock
  simp only [row048_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer003_pairs000
  · exact row048_layer003_pairs001
  · exact row048_layer003_pairs002
  · exact row048_layer003_pairs003
  · exact row048_layer003_pairs004
  · exact row048_layer003_pairs005
  · exact row048_layer003_pairs006
  · exact row048_layer003_pairs007
  · exact row048_layer003_pairs008
  · exact row048_layer003_pairs009
  · exact row048_layer003_pairs010
  · exact row048_layer003_pairs011
  · exact row048_layer003_pairs012
  · exact row048_layer003_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs
