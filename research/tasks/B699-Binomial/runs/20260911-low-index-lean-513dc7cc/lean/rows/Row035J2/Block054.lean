import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block050
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block051
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block053
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block049

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_chunks_eq : row035_layer006_chunks.flatten = row035_layer006_intervals := by
  rfl

theorem row035_layer006_pairs : pairCoverCheck row035_layer006_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer006_chunks_eq
  intro block hblock
  simp only [row035_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer006_pairs000
  · exact row035_layer006_pairs001
  · exact row035_layer006_pairs002
  · exact row035_layer006_pairs003
  · exact row035_layer006_pairs004
  · exact row035_layer006_pairs005
  · exact row035_layer006_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_checked :
    coverLayerCheck row035.height row035.goods { lower := 76160, upper := 152320, M := 33 } = true := by
  exact coverLayerCheck_of_parts row035_layer006_arithmetic row035_layer006_enumeration row035_bounds_eq row035_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_checked
