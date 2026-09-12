import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block047
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer013_pairs003 :
    row046_layer013_block003.all (fun I => row046_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer013_pairs004 :
    row046_layer013_block004.all (fun I => row046_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer013_pairs005 :
    row046_layer013_block005.all (fun I => row046_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer013_chunks_eq : row046_layer013_chunks.flatten = row046_layer013_intervals := by
  rfl

theorem row046_layer013_pairs : pairCoverCheck row046_layer013_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer013_chunks_eq
  intro block hblock
  simp only [row046_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer013_pairs000
  · exact row046_layer013_pairs001
  · exact row046_layer013_pairs002
  · exact row046_layer013_pairs003
  · exact row046_layer013_pairs004
  · exact row046_layer013_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_pairs
