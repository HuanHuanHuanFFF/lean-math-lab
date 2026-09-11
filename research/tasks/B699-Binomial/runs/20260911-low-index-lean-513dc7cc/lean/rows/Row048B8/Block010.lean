import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs009 :
    row048_layer003_block009.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs010 :
    row048_layer003_block010.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs011 :
    row048_layer003_block011.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs012 :
    row048_layer003_block012.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs013 :
    row048_layer003_block013.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs013

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_checked :
    coverLayerCheck row048.height row048.goods { lower := 18048, upper := 36096, M := 40 } = true := by
  exact coverLayerCheck_of_parts row048_layer003_arithmetic row048_layer003_enumeration row048_bounds_eq row048_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_checked
