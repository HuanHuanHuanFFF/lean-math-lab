import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_pairs007 :
    row046_layer000_block007.all (fun I => row046_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_pairs008 :
    row046_layer000_block008.all (fun I => row046_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_chunks_eq : row046_layer000_chunks.flatten = row046_layer000_intervals := by
  rfl

theorem row046_layer000_pairs : pairCoverCheck row046_layer000_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer000_chunks_eq
  intro block hblock
  simp only [row046_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer000_pairs000
  · exact row046_layer000_pairs001
  · exact row046_layer000_pairs002
  · exact row046_layer000_pairs003
  · exact row046_layer000_pairs004
  · exact row046_layer000_pairs005
  · exact row046_layer000_pairs006
  · exact row046_layer000_pairs007
  · exact row046_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_checked :
    coverLayerCheck row046.height row046.goods { lower := 2070, upper := 4140, M := 38 } = true := by
  exact coverLayerCheck_of_parts row046_layer000_arithmetic row046_layer000_enumeration row046_bounds_eq row046_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_checked
