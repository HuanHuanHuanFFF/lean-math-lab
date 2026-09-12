import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007PairBlock000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007PairBlock001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007PairBlock002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007PairBlock003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064.Layer007PairBlock004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_chunks_eq : row064_layer007_chunks.flatten = row064_layer007_intervals := by
  rfl

theorem row064_layer007_pairs : pairCoverCheck row064_layer007_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer007_chunks_eq
  intro block hblock
  simp only [row064_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row064_layer007_pairs000
  · exact row064_layer007_pairs001
  · exact row064_layer007_pairs002
  · exact row064_layer007_pairs003
  · exact row064_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs
