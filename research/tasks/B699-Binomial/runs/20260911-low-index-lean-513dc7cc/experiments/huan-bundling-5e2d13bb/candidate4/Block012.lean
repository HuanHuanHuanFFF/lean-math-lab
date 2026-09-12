import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_pairs009 :
    row046_layer001_block009.all (fun I => row046_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_pairs010 :
    row046_layer001_block010.all (fun I => row046_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_chunks_eq : row046_layer001_chunks.flatten = row046_layer001_intervals := by
  rfl

theorem row046_layer001_pairs : pairCoverCheck row046_layer001_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer001_chunks_eq
  intro block hblock
  simp only [row046_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer001_pairs000
  · exact row046_layer001_pairs001
  · exact row046_layer001_pairs002
  · exact row046_layer001_pairs003
  · exact row046_layer001_pairs004
  · exact row046_layer001_pairs005
  · exact row046_layer001_pairs006
  · exact row046_layer001_pairs007
  · exact row046_layer001_pairs008
  · exact row046_layer001_pairs009
  · exact row046_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_checked :
    coverLayerCheck row046.height row046.goods { lower := 4140, upper := 8280, M := 36 } = true := by
  exact coverLayerCheck_of_parts row046_layer001_arithmetic row046_layer001_enumeration row046_bounds_eq row046_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_checked
