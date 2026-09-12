import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block050
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block051
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block047
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate4.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer014_pairs004 :
    row046_layer014_block004.all (fun I => row046_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer014_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer014_chunks_eq : row046_layer014_chunks.flatten = row046_layer014_intervals := by
  rfl

theorem row046_layer014_pairs : pairCoverCheck row046_layer014_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer014_chunks_eq
  intro block hblock
  simp only [row046_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row046_layer014_pairs000
  · exact row046_layer014_pairs001
  · exact row046_layer014_pairs002
  · exact row046_layer014_pairs003
  · exact row046_layer014_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer014_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer014_checked :
    coverLayerCheck row046.height row046.goods { lower := 33914880, upper := 67829760, M := 18 } = true := by
  exact coverLayerCheck_of_parts row046_layer014_arithmetic row046_layer014_enumeration row046_bounds_eq row046_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer014_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer015_checked :
    coverLayerCheck row046.height row046.goods { lower := 67829760, upper := 135659520, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer015_checked
