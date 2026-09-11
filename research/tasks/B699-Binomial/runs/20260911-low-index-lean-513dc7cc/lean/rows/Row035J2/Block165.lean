import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block162
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block163
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block164
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block161

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_chunks_eq : row035_layer026_chunks.flatten = row035_layer026_intervals := by
  rfl

theorem row035_layer026_pairs : pairCoverCheck row035_layer026_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer026_chunks_eq
  intro block hblock
  simp only [row035_layer026_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer026_pairs000
  · exact row035_layer026_pairs001
  · exact row035_layer026_pairs002
  · exact row035_layer026_pairs003
  · exact row035_layer026_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_checked :
    coverLayerCheck row035.height row035.goods { lower := 79859548160, upper := 159719096320, M := 21 } = true := by
  exact coverLayerCheck_of_parts row035_layer026_arithmetic row035_layer026_enumeration row035_bounds_eq row035_layer026_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_checked
