import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block126
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block127
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block128
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J2.Block129
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs005 :
    row035_layer019_block005.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_chunks_eq : row035_layer019_chunks.flatten = row035_layer019_intervals := by
  rfl

theorem row035_layer019_pairs : pairCoverCheck row035_layer019_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer019_chunks_eq
  intro block hblock
  simp only [row035_layer019_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer019_pairs000
  · exact row035_layer019_pairs001
  · exact row035_layer019_pairs002
  · exact row035_layer019_pairs003
  · exact row035_layer019_pairs004
  · exact row035_layer019_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs
