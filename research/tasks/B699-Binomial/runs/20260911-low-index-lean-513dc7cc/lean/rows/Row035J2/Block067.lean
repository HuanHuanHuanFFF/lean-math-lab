import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block063
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block065
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block066
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block062

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_chunks_eq : row035_layer008_chunks.flatten = row035_layer008_intervals := by
  rfl

theorem row035_layer008_pairs : pairCoverCheck row035_layer008_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer008_chunks_eq
  intro block hblock
  simp only [row035_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer008_pairs000
  · exact row035_layer008_pairs001
  · exact row035_layer008_pairs002
  · exact row035_layer008_pairs003
  · exact row035_layer008_pairs004
  · exact row035_layer008_pairs005
  · exact row035_layer008_pairs006
  · exact row035_layer008_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_checked :
    coverLayerCheck row035.height row035.goods { lower := 304640, upper := 609280, M := 31 } = true := by
  exact coverLayerCheck_of_parts row035_layer008_arithmetic row035_layer008_enumeration row035_bounds_eq row035_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_checked
